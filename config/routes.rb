Rails.application.routes.draw do
  get 'giders/index'

  root "static_pages#home"
  post "sign_up", to: "users#create"
  get "sign_up", to: "users#new"

  resources :confirmations, only: [:create, :edit, :new], param: :confirmation_token
  resources :passwords, only: [:create, :edit, :new, :update], param: :password_reset_token
  resources :daires,:kisilers,:kasas,:aidats,:giders

  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  get "login", to: "sessions#new"

  put "account", to: "users#update"
  get "account", to: "users#edit"
  delete "account", to: "users#destroy"

  resources :active_sessions, only: [:destroy] do
    collection do
      delete "destroy_all"
    end
  end
  
end
