Rails.application.routes.draw do
  resources :records
  resources :messages
  resources :user_gameweek_joiners
  resources :player_gameweek_joiners
  resources :admin_users
  resources :gameweeks
  resources :users
  resources :players
  
  get '/users/:id/:gameweek_id/pg_joiners', to: 'users#pg_joiners'
  get '/users/:id/total_points', to: 'users#total_points'

  get '/admin_users/:id/players', to: 'admin_users#players'
  get '/admin_users/:id/league', to: 'admin_users#league'
  get '/admin_users/:id/:gw_id', to: 'admin_users#club_game'
  get '/admin_users/ug_joiners/:id/:gw_id', to: 'admin_users#ug_joiners'

  get '/gameweeks/admin_user/:id', to: 'gameweeks#admin_user'

  get '/user_gameweek_joiners/:id/:gw_id', to: 'user_gameweek_joiners#user'

  get '/player_gameweek_joiners/by_gw/:gw_id', to: 'player_gameweek_joiners#by_gw'
  get '/player_gameweek_joiners/find/:gw_id/:p_id', to: 'player_gameweek_joiners#find'
  get '/player_gameweek_joiners/by_user/:user_id', to: 'player_gameweek_joiners#by_user'

  get '/records/user_id/:user_id', to: 'records#by_user_id'

  get '/players/stats/:p_id/:gw_id', to: 'players#stats'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
