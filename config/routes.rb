Rails.application.routes.draw do
  root 'homes#index'

  resources :homes, only: [:index]

  resources :contests, only: [:new, :create]
end
