Rails.application.routes.draw do

  get 'welcome/index'
  get '/logout' => 'sessions#destroy'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/users/:id/friendships' => 'friendships#index', as: 'friendships_pending'
  put '/users/:id/friendships/:id' => 'friendships#update'
  root 'welcome#index'
  get '/games/newest' => 'games#newest', as: 'games_newest'
  get '/games/most_owned' => 'games#most_owned', as: 'games_most_owned'
  get '/games/highest_rated' => 'games#highest_rated', as: 'games_highest_rated'

  resources :users, only: [:new, :index, :show, :create] do
    resources :friends, only: [:index]
  end

  # resources :sessions, only: [:new, :create, :destroy]

  resources :categories, only: [:index, :show]

  resources :friendships, only: [:create, :new, :destroy]

  resources :ownerships, only: [:create, :new, :destroy]


  resources :games, only: [:index, :show]  do
    resources :reviews, only: [:new, :create]
  end

  # Linas/Nick: this format works if we need to create a custom route


end
