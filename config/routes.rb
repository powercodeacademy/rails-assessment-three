Rails.application.routes.draw do
  resources :pizzerias, only: [:new, :create, :show, :index]

end
