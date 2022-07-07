Rails.application.routes.draw do
  resources :posts do
    member do 
      get "rahul"
    end
    
    collection do 
      get "rahulgupta"
    end
  end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  get "/form_add", to: "home#add_form"
end
