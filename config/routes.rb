Rails.application.routes.draw do
  root 'introductions#index'

  resources :introductions
end
