Meloria::Application.routes.draw do
  root to: "welcome#index"

  resources :shops, only: [:new, :create]
end
