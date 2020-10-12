Rails.application.routes.draw do
  resources :cocktails
  resources :ingredients
  resources :users

  # get '/cocktails', to:"cocktails#index"

  # get '/cocktails/:id', to:"cocktails#show" as: "cocktails"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
