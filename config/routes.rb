Rails.application.routes.draw do
  get 'toppages/index'

  get 'tasks/new'

  get 'tasks/create'

  get 'tasks/destroy'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'
  resources :tasks

  get 'login', to: 'tasks#new'
  post 'login', to: 'tasks#create'
  delete 'logout', to: 'tasks#destroy'

  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
end