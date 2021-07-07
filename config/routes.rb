Rails.application.routes.draw do
  resources :messages
  resources :user_gameweek_joiners
  resources :player_gameweek_joiners
  resources :player_user_joiners
  resources :admin_users
  resources :gameweeks
  resources :users
  resources :players
  get '/users/:id/latest_starters', to: 'users#latest_starters'
  get '/users/:id/latest_subs', to: 'users#latest_subs'
  get '/users/:id/:gameweek_id/gw_starters', to: 'users#gw_starters'
  get '/users/:id/:gameweek_id/gw_subs', to: 'users#gw_subs'

  get '/users/:id/player_user_joiners', to: 'users#player_user_joiners'
  get '/admin_users/:id/players', to: 'admin_users#players'
  get '/gameweeks/admin_user/:id', to: 'gameweeks#admin_user'
  get '/admin_users/:id/league', to: 'admin_users#league'
  get '/users/:id/:gameweek_id/pg_joiners', to: 'users#pg_joiners'
  get '/admin_users/:id/:gw_id', to: 'admin_users#club_game'
  get '/user_gameweek_joiners/:id/:gw_id', to: 'user_gameweek_joiners#user'
  get '/admin_users/ug_joiners/:id/:gw_id', to: 'admin_users#ug_joiners'
  get '/player_gameweek_joiners/by_gw/:gw_id', to: 'player_gameweek_joiners#by_gw'
  get '/users/:id/total_points', to: 'users#total_points'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
