Rails.application.routes.draw do
  get 'item/index'
  root to: 'item#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
