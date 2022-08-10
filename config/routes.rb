Rails.application.routes.draw do
  resources :names
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  get "/form_add", to: "home#add_form"
end
