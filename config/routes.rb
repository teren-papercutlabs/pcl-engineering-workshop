Rails.application.routes.draw do
  resources :categories
  resources :tasks

  # Health check endpoint
  get "up" => "rails/health#show", as: :rails_health_check

  # Root path - show tasks index
  root "tasks#index"
end
