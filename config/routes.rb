Rails.application.routes.draw do
  resources :pizzerias, only: %i[index show new create] do
    resources :pizzas, only: %i[new create show]
  end
end
