Rails.application.routes.draw do
  devise_for :users
  resources :store_orders
  resources :product_orders
  resources :orders
  resources :products
  resources :stores
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
end
