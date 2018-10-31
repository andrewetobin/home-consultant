Rails.application.routes.draw do
  root 'session#new'
  post '/', to: 'session#create'
  post '/main_page', to: 'main_page#create'
  resources :main_page, only: [:create, :index, :prepare, :collect]
end
