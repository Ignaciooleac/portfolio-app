Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :roles
  resources :posts
  devise_for :users
  resources :users, only:[:show]
  root to: 'posts#index'
  delete 'postattachment/:id', to: 'posts#delete_attachment', as: 'deleteattachment'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
