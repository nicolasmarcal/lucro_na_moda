Rails.application.routes.draw do
  root to: "admin/home#index"

  namespace :admin do
    resources :home, only: :index
    resources :users, except: [:show]
    resources :seetings, only: [:edit, :update, :create, :new]
    devise_for :users
  end
end
