Meloria::Application.routes.draw do
  root "ember#index"
  resources :customers
end
