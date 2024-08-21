class PizzeriasController < ApplicationController
  def new
    @pizzeria = Pizzeria.new
  end

  def create
    @pizzeria = Pizzeria.create(pizzeria_params)

    if @pizzeria.save
      redirect_to @pizzeria
    else
      flash.now.alert = @pizzeria.errors.full_messages.to_sentence
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
    params.require(:pizzeria).permit(:name, :address)
  end
end
