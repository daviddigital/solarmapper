Rails.application.routes.draw do
  devise_for :users
  resources :suppliers

  root to: "static_pages#root"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
