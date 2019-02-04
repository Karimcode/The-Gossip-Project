Rails.application.routes.draw do
  root 'home#display'
  get 'welcome/:id', to: 'welcome#greetings'
  get '/contact', to: 'contact#display'
  get '/team', to: 'team#display'
  get '/gossips/:gossip_id', to: 'gossips#display', as: 'my_gossip'
  get '/users/:user_id', to: 'users#display', as: 'my_user'
end