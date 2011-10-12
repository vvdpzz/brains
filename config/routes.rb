Brains::Application.routes.draw do
  root :to => 'photos#index'
  resources :photos
  devise_for :users
end
