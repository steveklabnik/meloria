Meloria::Application.routes.draw do
  resources :customers

  root to: "welcome#index"

  resources :shops, only: [:new, :create, :show]
end
