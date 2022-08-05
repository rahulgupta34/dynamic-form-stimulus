Rails.application.routes.draw do
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  get "/form_add", to: "home#add_form"
  get "/drop_down", to: "home#dynamic_dropdown"
  post "/csv", to: "home#csv_import"
end
