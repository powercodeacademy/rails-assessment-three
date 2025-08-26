Rails.application.routes.draw do
  resources :pizzas, only: %i[new create show]
  resources :pizzerias, only: %i[index show new create]
end
