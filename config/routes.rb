Rails.application.routes.draw do
  root 'to_dos#index'

  resources :to_dos
end
