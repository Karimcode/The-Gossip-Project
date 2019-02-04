Rails.application.routes.draw do
  root 'home#display'
  get 'welcome/:id', to: 'welcome#greetings'
  get '/contact', to: 'contact#display'
  get '/team', to: 'team#display'
end