Rails.application.routes.draw do


  get 'profile/profile'

  get 'welcome/index'

  root 'welcome#index'

  get 'sessions/new'


  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html





end