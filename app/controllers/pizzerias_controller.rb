class PizzeriasController < ApplicationController
  def new
    @pizzeria = Pizzeria.new
  end

  def create
    @pizzeria = Pizzeria.create(pizzeria_params)
    redirect_to @pizzeria
  end

  def show
    @pizzeria = Pizzeria.find(params[:id])
  end

  def index
    @pizzerias = Pizzeria.all
  end

  private
  def pizzeria_params
    params.require(:pizzeria).permit(:name,:address)
  end
end
