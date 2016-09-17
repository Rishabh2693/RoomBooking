Rails.application.routes.draw do
  get 'adminsessions/new'

  get 'adminsessions/create'

  get 'adminsessions/destroy'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :bookings
  resources :rooms
  resources :admins
  resources :library_members
  resources :sessions
  resources :adminsessions
  root 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
