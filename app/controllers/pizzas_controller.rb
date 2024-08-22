class PizzasController < ApplicationController
  def new
    puts params
    if params[:pizzeria_id]
      @pizzeria = Pizzeria.find(params[:pizzeria_id])
      @pizza = Pizza.new
    else
      @pizza = Pizza.new
    end
  end

  def create
    @pizza = Pizza.new(pizza_params)

    if @pizza.save
      redirect_to pizza_path @pizza, notice: 'Pizza was successfully created.'
    else
      render :new
    end
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  private

  def pizza_params
    params.require(:pizza).permit(:pizzeria_id, :name, :description)
  end
end
