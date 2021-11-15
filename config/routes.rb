Rails.application.routes.draw do
  resources :suppliers

  root to: "suppliers#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
