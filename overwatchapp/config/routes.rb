Rails.application.routes.draw do
  resources :team_compositions
  resources :teams
  resources :users
  get '/login' => "sessions#new"
  post '/login' => "sessions#create"
  delete '/logout' => "sessions#destroy"

  resources :users do
    resources :teams, only: [:new, :create]
  end

  resources :teams do
    resources :team_compositions, only: [:new, :create]
  end
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
