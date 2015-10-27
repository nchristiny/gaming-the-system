Rails.application.routes.draw do

  get 'welcome/index'

  resources :users, only: [:new, :index, :show, :create] do
    resources :friends, only: [:index]
  end

  # resources :sessions, only: [:new, :create, :destroy]

  resources :categories, only: [:index, :show]

  resources :friendships, only: [:create, :new]

  resources :ownerships, only: [:create, :new]


  resources :games, only: [:index, :show]  do
    resources :reviews, only: [:new, :create]
  end

  # Linas/Nick: this format works if we need to create a custom route
  get '/logout' => 'sessions#destroy'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  root 'welcome#index'

end
