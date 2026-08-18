class PizzasController < ApplicationController
  before_action :set_pizzeria
  def show
    @pizza = Pizza.find(params[:id])
  end

  def new
    @pizza = @pizzeria.pizzas.new
  end

  def create
    @pizza = @pizzeria.pizzas.create(pizza_params)
    redirect_to pizzeria_pizza_url(@pizzeria, @pizza)
  end

  private

  def set_pizzeria
    @pizzeria = Pizzeria.find(params[:pizzeria_id])
  end

  def pizza_params
    params.require(:pizza).permit(:name, :description)
  end
end
