Rails.application.routes.draw do
  root 'to_dos#index'

  resources :to_dos do
    resources :to_do_items, only: [:new, :create, :edit, :update, :destroy]
  end
end
