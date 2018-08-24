Rails.application.routes.draw do
  root "home#index"

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  # get '/api.github.com/users/:id', to: 'users#'
  # get '/followers', to: 'followers#index'
  resources :dashboard, only: [:index]
end
