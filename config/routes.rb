Rails.application.routes.draw do
  resources :signups, only: [:create]
  # post "/signups", to: "signups#create"
  resources :campers, only: [:index, :show, :create]
  # get "/campers", to: "campers#index"
  # get "/campers/:id", to: "campers#show"
  # post "/campers", to: "campers#create"
  resources :activities, only: [:index, :destroy]
  # get "/activities", to: "activities#index"
  # delete "/activities/:id", to: "activities#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
