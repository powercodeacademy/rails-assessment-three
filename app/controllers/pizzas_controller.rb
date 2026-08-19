class PizzasController < ApplicationController
  def new
    @pizzeria = Pizzeria.find(params[:pizzeria_id])
    @pizza = Pizza.new
  end

  def create
    @pizzeria = Pizzeria.find(params[:pizzeria_id])
    @pizza = @pizzeria.pizzas.new(pizza_params)
    @pizza.save
    redirect_to pizzeria_pizza_path(@pizzeria, @pizza)
  end

  def show
    @pizzeria = Pizzeria.find(params[:pizzeria_id])
    @pizza = @pizzeria.pizzas.find(params[:id])
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name, :description)
  end
end