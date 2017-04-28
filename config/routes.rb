Rails.application.routes.draw do

devise_for :users
resources :registered_applications
resources :user, only: [:show]

namespace :api, defaults: { format: :json } do
  match '/events', to: 'events#preflight', via: [:options]
  resources :events, only: [:create]
end

authenticated :user do
      root 'users#show', as: :authenticated_root
end

  get 'welcome/index'
  root to: 'welcome#index'
end
