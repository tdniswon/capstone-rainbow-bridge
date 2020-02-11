Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  
  resources :main
  root "main#index"

  resources :reports
  
  # Added by Tyler 1/31, routs to orders page
  resources :orders
  get '/', to: 'orders#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
