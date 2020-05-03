Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    #Game actions
    get "/games" => "games#index"
    get "/games/:id" => "games#show"
    post "/games" => "games#create"
    patch "/games/:id" => "games#update"
    delete "/games/:id" => "games#destroy"

    #Player actions
    get "/players" => "players#index"
    get "/players/:id" => "players#show"

    #Field actions
    get "/fields" => "fields#index"
    get "/fields/:id" => "fields#show"

    #PlayerGame actions
    get "/player_games/" => "player_games#index"
    get "/player_games/" => "player_games#show"

    #Session actions
    post "/sessions" => "sessions#create"
  end
end
