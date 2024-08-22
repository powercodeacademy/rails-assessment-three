class PizzasController < ApplicationController
  def new
    @pizzeria = Pizzeria.find(params[:pizzeria_id])
    @pizza = @pizzeria.pizzas.build
  end

  def create
    @pizza = Pizza.new(pizza_params)
    @pizzeria = @pizza.pizzeria
    if @pizza.save
      redirect_to pizzeria_pizza_path(@pizzeria, @pizza), notice: 'Pizza was successfully created.'
    else
      render :new
    end
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  private
  def pizza_params
    params.require(:pizza).permit(:name,:description, :pizzeria_id)
  end
end
