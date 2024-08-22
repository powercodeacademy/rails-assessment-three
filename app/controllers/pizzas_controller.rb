class PizzasController < ApplicationController
  def new
    @pizzeria = Pizzeria.find(params[:pizzeria_id])
    @pizza = Pizza.new
  end

  def create
    @pizzeria = Pizzeria.find(params[:pizzeria_id])
    @pizza = @pizzeria.pizzas.build(pizza_params)

    if @pizza.save
      redirect_to @pizzeria
      render :new
    end
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  def index
    @pizzas = Pizza.all
  end

  private
  def pizza_params
    params.require(:pizza).permit(:name,:description)
  end
end
