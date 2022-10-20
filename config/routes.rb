Rails.application.routes.draw do
  root "articles#index"
  "session#home"
  
  resources :articles do 
    resources :comments
  end
  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/logout', to:'sessions#destroy'
end
