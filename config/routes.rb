Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'show_map', to: 'reports#show_map'
  resources :reports do
    resources :reviews, only: [:new, :create]
    patch 'close', to: 'reports#close'
  end
  post 'send_message', to: 'reports#send_message'
  resources :reviews, only: [:show, :destroy]
end
