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
  get '/users/:id/team_start', to: 'users#team_start'
  get '/users/:id/team_sub', to: 'users#team_sub'
  get '/users/:id/player_user_joiners', to: 'users#player_user_joiners'
  get '/admin_users/:id/players', to: 'admin_users#players'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
