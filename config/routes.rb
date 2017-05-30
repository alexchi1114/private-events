Rails.application.routes.draw do

root 'static_pages#home'
  
get '/signup', to: 'users#new'

get '/login', to: 'sessions#new'

post '/login', to: 'sessions#create'

delete '/logout', to: 'sessions#destroy'

resources :users, only: [:create, :new, :show]

resources :events, only: [:new, :create, :show, :index]

resources :invites, only: [:create]


end
