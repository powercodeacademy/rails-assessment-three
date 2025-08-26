class PizzasController < ApplicationController
  before_action :set_pizza, only: [:show, :edit, :update]

  def index
    @pizzas = Pizza.all
  end

  def new
    @pizza = Pizza.new
  end

  def show
  end

  def edit
  end

  def update
    if @pizza.update(pizza_params)
      redirect_to @pizza
    else
      render :edit
    end
  end

  private

  def set_pizza
    @pizza = Pizza.find(params[:id])
  end

  def pizza_params
    params.require(:pizza).permit(:name, :description, :pizzeria_id)
  end
end
