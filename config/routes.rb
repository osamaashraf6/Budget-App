Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'splashes/hello'
  resources :groups 
  resources :entities


  unauthenticated do
    root "splashes#hello"
  end

  authenticated :user do
    root 'groups#index', as: :authenticated_root
  end
end
