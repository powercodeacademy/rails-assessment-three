Rails.application.routes.draw do
  resources :pizzerias, only: %i[index show new create] do
    resources :pizzas, only: %i[show new create]
  end

  root 'pizzerias#index'
end
