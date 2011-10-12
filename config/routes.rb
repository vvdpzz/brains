Brains::Application.routes.draw do
  root :to => 'photos#index'
  resources :photos do
    member do
      put "up"
      put "down"
    end
  end
  devise_for :users
end
