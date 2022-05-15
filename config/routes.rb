Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users

  # Temporary Root Routes
  # devise_scope :user do
  #   root to: "devise/sessions#new"
  # end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
