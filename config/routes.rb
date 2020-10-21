Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/auth/facebook/callback' => 'sessions#facebook_auth'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/', to: 'sessions#welcome'
  get '/home', to: 'sessions#home'
  # get '/welcome', to: 'sessions#welcome'
  # get '/welcome/home', to: 'sessions#home'
  delete '/session', to: 'sessions#destroy'
  get '/users/:user_id/cocktails', to: 'users#user_cocktails_index'

  get '/cocktails/search', to:'cocktails#search'
  post '/search', to:'cocktails#results'
  get '/', to:'cocktails#home'

  resources :users, only: [:new, :create]

  resources :users do
    resources :cocktails
  end
 
  resources :cocktails do
    resources :ingredients
  end

  resources :cocktails do
    resources :reviews
  end
  resources :ingredients
  resources :users


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
