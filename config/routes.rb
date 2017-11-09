Rails.application.routes.draw do
  devise_for :users
  resources :charges
  resources :listings do
    resources :orders, only: [:new, :create]
    collection do
      get 'search'
    end
  end
  get 'pages/about'
  get 'pages/contact'
  get 'seller' => "listings#seller"
  get 'sales' => "orders#sales"
  get 'purchases' => "orders#purchases"

  root 'listings#index'

  get '/chat', to: 'chatrooms#show'
  
    resources :messages, only: [:create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
