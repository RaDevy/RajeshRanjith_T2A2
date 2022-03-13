Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get "/about", to: "about#index", as: "about"
  get "/product", to: "product#index", as:  "products"
  get "/product/:id", to: "product#show", as:  "product"
  get "/product/:id/complete", to: "product#complete", as:  "product_complete"
  devise_for :users
end
