Rails.application.routes.draw do
    # Routes for User
    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
    get '/register', to: 'users#new'
    post '/register', to: 'users#create'
  
    # Routes for Book
    resources :books, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  
    # Routes for Borrow
    resources :borrows, only: [:create, :destroy]
  
    root 'books#index'
end
  