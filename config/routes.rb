Rails.application.routes.draw do

devise_for :users
resources :registered_applications
resources :user, only: [:show]

authenticated :user do
      root 'users#show', as: :authenticated_root
end

  get 'welcome/index'
  root to: 'welcome#index'
end
