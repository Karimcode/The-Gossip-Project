Rails.application.routes.draw do

  get 'city/show'
  #get 'welcome/:id', to: 'welcome#greetings'
  #get '/gossips/:gossip_id', to: 'gossips#display', as: 'my_gossip'
  #get '/users/:user_id', to: 'users#display', as: 'my_user'

  root 'home#display'
  get '/contact', to: 'contact#display'
  get '/team', to: 'team#display'

  resources  :gossips

  resources  :users
  resources   :city, only: [:show]

  resources :sessions, only: [:new, :create, :destroy]
end