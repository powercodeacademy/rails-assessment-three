class PizzasController < ApplicationController
  before_action :set_pizzeria 

  def new 
    @pizza = @pizzeria.pizzas.build 
  end

  def create
    @pizza = @pizzeria.pizzas.build(pizza_params)
    if @pizza.save 
      redirect_to pizzeria_pizza_path(@pizzeria, @pizza)
    else 
      render :new 
    end
  end 

  def show 
    @pizza = @pizzeria.pizzas.find(params[:id])
  end

  private 

  def set_pizzeria 
    @pizzeria = Pizzeria.find(params[:pizzeria_id])
  end

  def pizza_params 
    params.require(:pizza).permit(:name, :address)
  end
end
