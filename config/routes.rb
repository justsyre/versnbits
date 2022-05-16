Rails.application.routes.draw do
  devise_for :users
  resources :profile

  root 'pages#home'
  

  # Temporary Root Routes
  # devise_scope :user do
  #   root to: "devise/sessions#new"
  # end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
