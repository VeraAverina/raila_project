Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {registrations: 'users/registrations'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "recipes#index", as: 'home'
  # get 'new'=>'recipes#new'
  resources :recipes do
    resources :ingrs
    resources :comments
  end
  resources :systems
  resources :countries
  resources :enums
  resources :enum_converts
  get 'about'=> 'pages#about'
  get 'contacts'=> 'pages#contacts'
  # resources :users
end
