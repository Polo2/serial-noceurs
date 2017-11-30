Rails.application.routes.draw do

  get 'registries/index'

  get 'registries/show'

  get 'registries/create'

  get 'registries/new'

  get 'registries/update'

  get 'registries/edit'

  get 'registries/destroy'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :weddings

  mount Attachinary::Engine => "/attachinary"

  get 'users/profile', to: 'pages#profile'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
