Rails.application.routes.draw do
  resources :taskcards
  resources :lists
  resources :memeberships
  resources :organizations
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # post '/users', to: 'users#create'
  # post '/organizations', to: 'organizations#create'
  # post '/taskcards', to: 'taskcards#create'
  # post '/lists', to: 'lists#create'

  get '/users/:id', to: 'users#show'
  get '/organizations/:id', to: 'organizations#show'
end
