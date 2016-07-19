Rails.application.routes.draw do
  get 'home/index'

  get '/:id' => 'home#show'

  devise_for :admins

  namespace :admin do
    resources :restaurants
  end

  # root to: "restaurants#index"

  root to: "home#index"
end