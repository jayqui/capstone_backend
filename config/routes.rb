Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/games" => "games#index"
    get "/games/:id" => "games#show"
    post "/games" => "games#create"
    patch "/games/:id" => "games#update"
    delete "/games/:id" => "games#destroy"
  end
end
