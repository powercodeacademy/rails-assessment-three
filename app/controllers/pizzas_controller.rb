class PizzasController < ApplicationController
  def new 
    @pizza = Pizza.new 
  end

  def create
    @pizza = Pizza.create(pizza_params)
    redirect_to @pizza
  end 

  def show 
    @pizza = Pizza.find(params[:id])
  end

  private 

  def pizza_params 
    params.require(:pizza).permit(:name, :address, :pizzeria_id)
  end
end
