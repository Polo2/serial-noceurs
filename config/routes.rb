Rails.application.routes.draw do

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :weddings do
    resources :messages, only: [:new, :index]
  end
  resources :messages, only: [:index, :create, :update, :destroy]

  resources :registries

  mount Attachinary::Engine => "/attachinary"

  get 'users/profile', to: 'pages#profile'
  # get 'users/message', to: 'pages#message'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
