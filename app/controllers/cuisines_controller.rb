class CuisinesController < ApplicationController
before_action :authenticate_admin!, only: [:create, :new, :edit]

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
  def edit
    @cuisine = Cuisine.find(params[:id])
  end

  def update
    @cuisine = Cuisine.find(params[:id])
    if @cuisine.update(cuisine_params)
    redirect_to @cuisine
    else
      render "edit"
    end
  end

  private
  def cuisine_params
  params.require(:cuisine).permit(:cuisine)
  end
end