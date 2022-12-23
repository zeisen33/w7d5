Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "subs#index" #CHANGE THIS LATER TO ALL PAGE

  resources :users, only: [:new, :create, :edit, :update, :show]
  resource :session, only: [:new, :create, :destroy]

  resources :subs, except: [:destroy]
  resources :posts, except: [:index, :destroy]

end
