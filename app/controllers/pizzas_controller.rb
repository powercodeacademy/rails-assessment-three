class PizzasController < ApplicationController
  def show
    @pizza = Pizza.find(params[:id])
    @pizzeria = @pizza.pizzeria
  end

  def new
    @pizzeria = Pizzeria.find(params[:pizzeria_id])
    @pizza = @pizzeria.pizzas.build
  end

  def create
    @pizza = Pizza.new(pizza_params)
    @pizzeria = @pizza.pizzeria

    if @pizza.save
      redirect_to pizzeria_pizza_path(@pizza.pizzeria, @pizza)
    else
      flash.now.alert = @pizza.errors.full_messages.to_sentence
      render :new
    end
  end

  private

  def pizza_params
    params.require(:pizza).permit(:pizzeria_id, :name, :description)
  end
end
