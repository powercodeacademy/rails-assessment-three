Rails.application.routes.draw do
  resources  :pizzerias, only:  %i[show new create index] do
  resources  :pizzas, only:  %i[show new create]
  end
end
