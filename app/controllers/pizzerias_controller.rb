class PizzeriasController < ApplicationController
  def index
    @pizzerias = Pizzeria.all
  end

  def show
    @pizzeria = Pizzeria.find(params[:id])
  end

  def new
    @pizzeria = Pizzeria.new
  end

  def create
    @pizzeria = Pizzeria.create(pizzeria_params)
    redirect_to pizzeria_path(@pizzeria)
  end

  private

  def pizzeria_params
    params.require(:pizzeria).permit(:name, :address)
  end
end
