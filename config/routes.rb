Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :rental_lines
  resources :orders do 
    member do
      patch 'archive'
    end
  end
  resources :order_line_restrictions
  resources :order_lines do 
    member do
      patch 'archive'
    end
  end
  resources :tier_fillings
  resources :task_assignments
  resources :tasks do
    member do
      patch 'archive'
    end
  end
  resources :tiers do
    member do
      patch 'archive'
    end
  end

  resources :employees do
    member do
      patch 'archive'
    end
  end
  resources :customers do
    member do
      patch 'archive'
    end
  end
  resources :rental_items
  resources :cake_flavors
  resources :shapes
  resources :frosting_flavors
  resources :fillings
  resources :employee_types
  resources :employee_statuses
  resources :products
  resources :task_statuses
  resources :order_line_statuses
  resources :dietary_restrictions
  resources :order_types
  resources :order_statuses
  resources :customer_statuses
  resources :main
  root "main#index"
  resources :reports
  resources :api

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
