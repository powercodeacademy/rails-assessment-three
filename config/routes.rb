Rails.application.routes.draw do
  resources :pizzas
  resources :pizzerias, only: %i[index show new create]
end
