Rails.application.routes.draw do
  resources :orders
  devise_for :users
  devise_for :views
  resources :listings
  get 'pages/about'
  get 'pages/contact'
  get 'seller' => "listings#seller"

  root 'listings#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
