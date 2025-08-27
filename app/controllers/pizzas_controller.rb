require 'pry'
class PizzasController < ApplicationController
  before_action :set_pizzeria

  def show
    @pizza = Pizza.find(params[:id])
  end

  def new
    @pizzeria = Pizzeria.find(params[:pizzeria_id])
    @pizza = @pizzeria.pizzas.build
  end

  def create
    @pizza = @pizzeria.pizzas.new(pizza_params)
    if @pizza.save
      redirect_to [@pizzeria, @pizza], notice: 'Pizza created!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_pizzeria
    @pizzeria = Pizzeria.find(params[:pizzeria_id])
  end

  def pizza_params
    params.require(:pizza).permit(:name, :description)
  end
end
