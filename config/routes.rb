Rails.application.routes.draw do
  get 'users/index'

  get 'users/new'

  get 'users/create'

  get 'users/show'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  get 'registered_applications/index'

  get 'registered_applications/new'

  get 'registered_applications/create'

  get 'registered_applications/show'

  get 'registered_applications/edit'

  get 'registered_applications/update'

  get 'registered_applications/destroy'

  devise_for :users
  get 'welcome/index'
  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
