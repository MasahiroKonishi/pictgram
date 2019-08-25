Rails.application.routes.draw do
  get 'topics/new'
  get 'sessions/new'
  get 'users/new'
  get 'pages/index'
  # トップページのルーティングを指定
  root 'pages#index'
  get 'pages/help'
  get 'favorites/index'
  
  resources :users
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  post '/favorites', to: 'favorites#create'

  resources :topics

end