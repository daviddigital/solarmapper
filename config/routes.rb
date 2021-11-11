Rails.application.routes.draw do
  resources :suppliers

  root to: "suppliers#index"

  # get 'suppliers/index'
  # get 'suppliers/new'
  # get 'suppliers/edit'
  # get 'suppliers/show'
  # get 'suppliers/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
