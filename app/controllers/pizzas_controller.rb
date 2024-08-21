class PizzasController < ApplicationController
  def new
    @pizzeria = Pizzeria.find(params[:pizzeria_id])
    @pizza = @pizzeria.pizzas.build
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  # def create
  #   @pizza = Pizza.create(pizza_params)
  #   render: @pizzeria
  # end

  def create
    @pizzeria = Pizzeria.find(pizza_params[:pizzeria_id])
    @pizza = @pizzeria.pizzas.build(pizza_params)

    if @pizza.save
      redirect_to @pizza, alert: 'Pizza was successfully created.'
    else
      render :new
    end
  end


  private
  def pizza_params
    params.require(:pizza).permit(:name,:description, :pizzeria_id)
  end
end
