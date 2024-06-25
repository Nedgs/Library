Rails.application.routes.draw do
    # Routes for User
    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
    get '/register', to: 'users#new'
    post '/register', to: 'users#create'
  
    get '/users/:id/borrowed_books', to: 'users#borrowed_books', as: 'borrowed_books_user'
  
    # Routes for Book
    resources :books
  
    # Routes for Borrow
    resources :borrows, only: [:create, :destroy]
  
    root 'books#index'
end
  