Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/auth/facebook/callback' => 'sessions#facebook_auth'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/', to: 'sessions#welcome'
  get '/home', to: 'sessions#home'
  delete '/session', to: 'sessions#destroy'
  get '/users/:user_id/cocktails', to: 'users#user_cocktails_index'

  resources :ingredients
  resources :users, only: [:new, :create]

  resources :cocktails do
    resources :reviews
  end

 



end
