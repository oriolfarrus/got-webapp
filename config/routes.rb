Rails.application.routes.draw do
  get 'sessions/new'

  get 'users2/new'

  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  root 'static_pages#home'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  post '/universe/new_interval', to: 'universes#new_interval'

  post '/house/:id/change_user', to: 'houses#change_user'

  resources :users
  resources :universes
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]
  resources :houses
  resources :interval_master
end
