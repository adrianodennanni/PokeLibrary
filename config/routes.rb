Rails.application.routes.draw do

  root 'main#index'

  devise_for :users, :controllers => { :omniauth_callbacks => 'users/omniauth_callbacks' }

  get '/all', to: 'main#all'

  resources :pokemons

  resources :parties

end
