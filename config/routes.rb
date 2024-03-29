Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'home#index'
  resources :users, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :friendships, only: [:index, :create, :destroy] 
  get '/friendships' => 'friendships#destroy', as: 'destroy_friendship_path'
    
end
