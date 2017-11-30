Rails.application.routes.draw do

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :weddings

  resources :registries

  mount Attachinary::Engine => "/attachinary"

  get 'users/profile', to: 'pages#profile'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
