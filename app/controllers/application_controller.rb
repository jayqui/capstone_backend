class ApplicationController < ActionController::Base
  #make current player method using current user (cheatsheet)
  protect_from_forgery with: :null_session
end
