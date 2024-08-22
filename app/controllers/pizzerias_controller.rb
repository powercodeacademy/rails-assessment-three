class PizzeriasController < ApplicationController
  def new
    @pizzeria = Pizzeria.new
  end

  def create
    @pizzeria = Pizzeria.new(pizzeria_params)
    if @pizzeria.save
      redirect_to pizzeria_path(@pizzeria), notice: 'Pizzeria was successfully created.'
    else
      render :new
    end
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
