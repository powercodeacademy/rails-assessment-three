Rails.application.routes.draw do
  resources :pizzas, only: [:new, :create, :show]
  resources :pizzerias

  resources :pizzerias do
    resources :pizzas, only: [:new, :create, :show]
  end
end
