class PizzasController < ApplicationController
  def new
    @pizza = Pizza.new
  end

  def create

  end

  private

  def pizza_params
    # params.require(:pizzeria).permit(:name,:address)
  end
end
