Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # for listing all retaurants
  # get "restaurants", to: "restaurants#index", as: :restaurants
  # for showing a specific restaurant/id:3
  # get "restaurants/:id", to:"restaurants#show", as: :restaurant
  # for restaurant creation by user
  # get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  # post "restaurants", to: "restaurants/create",

  # update a specific restaurant/id:3
  #patch "restaurants/:id", to:"restaurants#update", as: :edit_restaurant

  # for adding a review
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end
  # get "/restaurants/:restaurant_id/review/new", to:"reviews/new", as: :new_restaurant_review
  # post "/restaurants/:restaurant_id/review", to:"reviews/create", as: :restaurant_reviews
end
