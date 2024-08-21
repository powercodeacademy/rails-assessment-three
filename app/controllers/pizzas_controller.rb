class PizzasController < ApplicationController
  def new
    @pizzeria = Pizzeria.find(params[:pizzeria_id])
    @pizza = @pizzeria.pizzas.build
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  def create
    @pizza = Pizza.new(pizza_params)
    @pizzeria = @pizza.pizzeria

    if @pizza.save
      redirect_to @pizza
    else
      flash.now[:alert] = "Name and Description must be present"
      render :new
    end
  end

  private
  def pizza_params
    params.require(:pizza).permit(:name,:description, :pizzeria_id)
  end
end
