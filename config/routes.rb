Rails.application.routes.draw do
  # get 'home/index'
  root 'home#index'

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :conversations, only: [:create] do
    member do
      post :close
    end
    
    resources :messages, only: [:create]
  end
end
