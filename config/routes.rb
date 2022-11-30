Rails.application.routes.draw do
  resources :restaurant_pizzas, only: [:create]
  resources :restaurants, only: [:show, :index, :destroy]
  resources :pizzas, only: [:index]  
end
