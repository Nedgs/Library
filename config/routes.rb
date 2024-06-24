Rails.application.routes.draw do
    # Routes pour User
    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
    get '/register', to: 'users#new'
    post '/register', to: 'users#create'
  
    # Routes pour Book
    resources :books
  
    # Routes pour Borrow
    resources :borrows, only: [:create, :destroy]
  
    root 'books#index'
end
  