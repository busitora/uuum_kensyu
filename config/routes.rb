Rails.application.routes.draw do

  root 'tasks#index'
  resources :tasks
  get '/login', to: 'user_sessions#new'
  post '/login', to: 'user_sessions#create'
  delete '/logout', to: 'user_sessions#destroy'
end
