Rails.application.routes.draw do
  # get 'users/index'
  devise_for :users

  #devise sign out
  devise_scope :user do 
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'categories#index' 
  
  resources :categories, only: [:index, :new, :create, :edit, :update, :destroy] do 
    resources :expenditures, only: [:index, :new, :create, :edit, :update, :destroy]
  end
   
  
end
