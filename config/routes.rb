Rails.application.routes.draw do

  root 'homes#index'

  resources :posts
  resources :users do
    resources :posts
  end

  get '/about' => 'about#index'
  get '/login' => 'sessions#new', as: :login
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy', as: :logout
  get '/posts/:id/share' => 'posts#share', as: :share
  post '/posts/:id/share' => 'posts#send_share'
  get '/login/forgot' => 'sessions#forgot', as: :forgot
  post '/login/forgot' => 'sessions#reset_password'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
