Rails.application.routes.draw do
  root 'application#hello'
  get '/login' => 'sessions#new', as: 'new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
end
