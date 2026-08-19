class PizzasController < ApplicationController

  def new
    @pizza = Pizza.new
  end

  def create
    @pizza = Pizza.new(pizza_params)

    if @pizza.save
      redirect_to @pizza
    else
      render :new
    end
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name, :description, :pizzeria_id)
  end

end