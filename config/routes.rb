Rails.application.routes.draw do

  resources :websites, path: ''

  root to: 'websites#index'

end
