Rails.application.routes.draw do
  root to: 'products#index'
  devise_for :users, path: 'user', controllers: { sessions: "users/sessions"}
  devise_for :admins, path: 'admin', controllers: { sessions: "admins/sessions"}
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products
  resources :categories do
    member do
      get :products
    end
  end
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
end
