Rails.application.routes.draw do
  get 'weddings/index'

  get 'weddings/show'

  get 'weddings/new'

  get 'weddings/create'

  get 'weddings/edit'

  get 'weddings/update'

  get 'weddings/destroy'

  devise_for :users
  resources :weddings

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
