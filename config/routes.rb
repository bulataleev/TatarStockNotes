Rails.application.routes.draw do
  
  devise_for :users
  get 'home/about'
  # get 'home/index'
  post '/' => 'home#index'
  root 'home#index'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
