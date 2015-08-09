Rails.application.routes.draw do
  root 'homes#index'

  resources :homes, only: [:index]

  resources :contests, only: [:new, :create, :index] do
    member do
      get :replays
    end
  end

  resources :problems, only: [] do
    member do
      get :replay
    end
  end

  resources :records, only: [:new, :create]
end
