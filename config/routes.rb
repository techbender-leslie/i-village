Rails.application.routes.draw do

  # You can have the root of your site routed with "root"
  root to: 'static_pages#home'

  get 'home', to: 'static_pages#home', as: 'home'

  get 'about', to: 'static_pages#about', as: 'about'

  get 'contact', to: 'static_pages#contact', as: 'contact'

  get 'sessions/new'

  get 'categories/index'

  get 'categories/show'

  resources :users
  
  resources :conversations do
    resources :comments 
  end

  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'

  get '/sign_up' => 'users#new', as: "sign_up"
  post '/users' => 'users#create'


end
