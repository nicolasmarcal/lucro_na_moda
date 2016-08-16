Rails.application.routes.draw do
  root to: "admin/home#index"

  namespace :admin do
    resources :home, only: :index
    resources :users, except: [:show]
    resources :seetings, only: [:edit, :update, :create, :new] do
      resources :consulting_kinds, only: [:edit, :update, :create, :new]
      resources :consulting_steps, only: [:edit, :update, :create, :new]
    end

    devise_for :users

    resources :zipcode, only: [] do
      collection do
        get :find
      end
    end
  end
end
