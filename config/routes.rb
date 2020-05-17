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
    post "/players" => "players#create"

    #Field actions
    get "/fields" => "fields#index"
    get "/fields/:id" => "fields#show"
    post "/fields" => "fields#create"

    #PlayerGame actions
    get "/player_games" => "player_games#index"
    get "/player_games/:id" => "player_games#show"
    post "/player_games" => "player_games#create"
    delete "/player_games/:id" => "player_games#destroy"

    #Session actions
    post "/sessions" => "sessions#create"
  end
end
