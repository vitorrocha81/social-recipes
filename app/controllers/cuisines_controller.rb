class CuisinesController < ApplicationController
before_action :authenticate_admin!, only: [:create, :new]

  def index
    @cuisine = Cuisine.all
  end

  def show
    @cuisine = Cuisine.find(params[:id])
  end

  def new
    @cuisine = Cuisine.new
  end

  def create
    @cuisine = Cuisine.new(cuisine_params)
    if @cuisine.save
      redirect_to @cuisine
    else
      render "new"
    end
  end

  private
  def cuisine_params
  params.require(:cuisine).permit(:cuisine)
  end
end