Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users
  root :to => "welcome#index"
  get "/home/index", to: "home#index", as: "orderpage"


  match '/cart', to: "orders#cart", as: "cart", via: [:get, :post]

  resources :orders

  # devise_for :users do
  #   get "/users/sign_out" => "devise/sessions#destroy", :as => :destroy_user_session
  # end

  get "*path", to: redirect("/")
end
