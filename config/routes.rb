Rails.application.routes.draw do
  root 'pizzerias#index'
  resources :pizzerias, only: %i[index show new create] do
    resources :pizzas, only: %i[show new create]
  end
end
