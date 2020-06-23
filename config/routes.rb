Rails.application.routes.draw do
  resources :gameweek_admin_user_joiners
  resources :user_gameweek_joiners
  resources :player_gameweek_joiners
  resources :player_user_joiners
  resources :admin_users
  resources :gameweeks
  resources :users
  resources :players
  get '/admin_users/route/:id', to: 'admin_users#a_user'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
