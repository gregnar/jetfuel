Rails.application.routes.draw do

  resources :websites, as: nil

  root to: 'websites#index'

  get '/:id', to: 'websites#show'

end
