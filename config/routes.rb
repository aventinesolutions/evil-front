Rails.application.routes.draw do
  root to: 'chat#show'

  get '¸/login', to: 'auth#new'
  post '/login', to: 'auth#create'
end
