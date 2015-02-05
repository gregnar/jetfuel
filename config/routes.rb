Rails.application.routes.draw do

  resources :websites

  root to: 'websites#index'

end
