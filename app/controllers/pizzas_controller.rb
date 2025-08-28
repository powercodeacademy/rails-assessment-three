class PizzasController < ApplicationController

  def new
    @pizzeria = Pizzeria.find(params[:pizzeria_id])
    @pizza = @pizzeria.pizzas.find(params[:pizzeria_id])
  end

  def create
    @pizza = Pizza.create(pizza_params)
    redirect_to [pizza.pizzeria, pizza]
    end
  end

  def show
    @pizza = Pizza.find(params[:id])
    @pizzeria = @pizza.pizzeria
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name, :description, :pizzeria_id)
  end
end
