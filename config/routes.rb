Rails.application.routes.draw do
  resources :events, only: [:create, :index]
  resources :issues, only: [:index, :show]
end