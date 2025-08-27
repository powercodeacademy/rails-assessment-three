class PizzasController < ApplicationController
  def show
    @pizza = Pizza.find(params[:id])
  end

  def new
    @pizzeria = Pizzeria.find(params[:pizzeria_id])
    @pizza = @pizzeria.pizzas.build
  end

  def create
    @pizzeria = Pizzeria.find(params[:pizzeria_id])
    @pizza = @pizzeria.pizzas.build(pizza_params)

    if @pizza.save
      redirect_to @pizza
    else
      render :new
    end
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name, :description)
  end
end
