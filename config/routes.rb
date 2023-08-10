Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :cats
      resources :dogs
      resources :members
      resources :resources
      resources :groups
      resources :users
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
