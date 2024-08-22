Rails.application.routes.draw do
  resources :pizzerias, only: [:new, :create, :show, :index] do
    resources :pizzas, only: [:new, :create, :show]
  end

  resources :pizzas, only: [:new, :create, :show]
end
