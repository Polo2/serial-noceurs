Rails.application.routes.draw do

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :weddings do
    resources :messages, only: [:new, :index]
    resources :reviews, only: :create
    resources :registries, only: [:index, :new, :create]
  end

  resources :registries, only: [:edit, :update, :show, :destroy]

  resources :messages, only: [:index, :create, :update, :destroy]

  resources :users, only: [] do
    resources :inboxes, only: :index
  end



  mount Attachinary::Engine => "/attachinary"

  get 'users/profile', to: 'pages#profile'
  # get 'users/message', to: 'pages#message'

  get 'research', to: 'pages#search'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
