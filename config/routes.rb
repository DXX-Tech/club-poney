Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'ponies#index'
  resources :ponies
  resources :groups
  resources :groups_ponies
  resources :imports
end
