class PizzasController < ApplicationController
  def new 
  end

  def create
  end 

  def show 
    @pizza = Pizza.find(params[:id])
  end
end
