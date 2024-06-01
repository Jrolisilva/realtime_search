Rails.application.routes.draw do
  resources :searches, only: [:create, :index]
  root 'searches#index'
end
