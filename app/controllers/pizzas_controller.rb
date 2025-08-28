class PizzasController < ApplicationController
  def create
    @pizza = Pizza.new(pizza_params)
    @pizzeria = Pizzeria.find(params[:pizzeria_id])
    if @pizza.save
      redirect_to pizzeria_pizza_path(pizzeria_id: @pizzeria.id, id: @pizza.id)
    else
      render :new
    end
  end

  def show
    @pizza = Pizza.find(params[:id])
    @pizzeria = Pizzeria.find(params[:pizzeria_id])
  end

  def new
    @pizza = Pizza.new
    @pizzeria = Pizzeria.find(params[:pizzeria_id])
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name, :description, :pizzeria_id)
  end
end
