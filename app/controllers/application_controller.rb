class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  helper_method :current_player

  # make current player method using current user (cheatsheet)
  def current_player
    auth_headers = request.headers["Authorization"]
    if auth_headers.present? && auth_headers[/(?<=\A(Bearer ))\S+\z/]
      token = auth_headers[/(?<=\A(Bearer ))\S+\z/]
      begin
        decoded_token = JWT.decode(
          token,
          Rails.application.credentials.fetch(:secret_key_base),
          true,
          { algorithm: "HS256" }
        )
        Player.find_by(id: decoded_token[0]["player_id"])
      rescue JWT::ExpiredSignature
        nil
      end
    end
  end

  def authenticate_player
    unless current_player
      render json: {}, status: :unauthorized
    end
  end

  def authenticate_admin
    unless current_player && current_player.admin
      render json: {}, status: :unauthorized
    end
  end
end
