Rails.application.routes.draw do
  root to: "admin/home#index"

  namespace :admin do
    resources :home, only: :index
    devise_for :users
  end
end
