class PizzasController < ApplicationController
  def new
    @pizza = Pizza.new
  end

  def create
    @pizza = Pizza.create(pizza_params)
    @pizza = @pizzeria.pizzas.build(pizza_params)
    if @pizza.save
    redirect_to pizzerias_path
    else 
      render :new
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
