Rails.application.routes.draw do
  get 'users/new'
  get 'pages/index'
  # トップページのルーティングを指定
  root 'pages#index'
  get 'pages/help'
  
  resources :users
end
