Rails.application.routes.draw do
  resources :user_gameweek_joiners
  resources :player_gameweek_joiners
  resources :player_user_joiners
  resources :admin_users
  resources :gameweeks
  resources :users
  resources :players
  get '/users/:id/team_start', to: 'users#team_start'
  get '/users/:id/team_sub', to: 'users#team_sub'
  get '/users/:id/player_user_joiners', to: 'users#player_user_joiners'
  get '/admin_users/:id/players', to: 'admin_users#players'
  get '/gameweeks/admin_user/:id', to: 'gameweeks#admin_user'
  get 'admin_users/:id/latest_gw', to: 'admin_users#latest_gw'
  get '/admin_users/:id/league', to: 'admin_users#league'
  get '/users/:id/:gameweek_id/pg_joiners', to: 'users#pg_joiners'
  get '/admin_users/:id/:gw_id', to: 'admin_users#club_game'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
