Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
  resources :products, only: [:show, :index, :new, :create] do
    member do
      get 'description'
      get 'inventory'
    end
  end
  root 'products#index'
end
