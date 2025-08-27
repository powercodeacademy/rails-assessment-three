class PizzasController < ApplicationController
  def create
    @pizza = Pizza.new(pizza_params)
    @pizzeria ||= Pizzeria.find(params[:pizzeria_id])
    if @pizza.save
      redirect_to pizzeria_pizza_path(pizzeria_id: @pizzeria.id, pizza: @pizza)
    else
      render :new
    end
  end

  def show

  end

  def new
    @pizza = Pizza.new
    @pizzeria ||= Pizzeria.find(params[:pizzeria_id])
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name, :description, :pizzeria_id)
  end
end
