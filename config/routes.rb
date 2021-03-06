Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get "/about", to: "about#index", as: "about"
  get "/product/:id/complete", to: "product#complete", as:  "product_complete"

  resources :product do
  end

  devise_for :users
end
