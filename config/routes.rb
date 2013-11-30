Meloria::Application.routes.draw do
  resources :appointments

  root "ember#index"
  resources :customers
end
