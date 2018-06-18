Rails.application.routes.draw do
  root :to => "welcome#index"

  get 'welcome/index'
  devise_for :users, controllers: { registrations: "registrations" }
  get "/home/index", to: "home#index", as: "orderpage"
  get '/cart', to: "orders#cart", as: "cart"
  get '/admin', to: "admin#index", as: "admin"

  resources :orders
  resources :order_items

  get "*path", to: redirect("/")
end
