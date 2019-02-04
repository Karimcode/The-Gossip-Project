Rails.application.routes.draw do
  get 'users/display'
  root 'home#display'
  get 'welcome/:id', to: 'welcome#greetings'
  get '/contact', to: 'contact#display'
  get '/team', to: 'team#display'
  get '/gossips/:gossip_id', to: 'gossips#display'
end