class PizzasController < ApplicationController
  def show
    @pizza = Pizza.find(params[:id])
    @pizzeria = @pizza.pizzeria
  end

  def new
    @pizzeria = Pizzeria.find(params[:pizzeria_id])
    @pizza = @pizzeria.pizzas.build
  end

  def create
    pizza = Pizza.create(pizza_params)

    redirect_to [pizza.pizzeria, pizza]
  end

  private

  def pizza_params
    params.require(:pizza).permit(:pizzeria_id, :name, :description)
  end
end
