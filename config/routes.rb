Rails.application.routes.draw do

  resources :websites, path: ''
  resources :submitted_websites, only: [:show]

  root to: 'websites#index'

end
