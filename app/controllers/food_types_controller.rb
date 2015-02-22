class FoodTypesController < ApplicationController
  before_action :authenticate_admin!, only: [:create, :new,:edit, :update]
 
 def index
  @foodtypes = FoodType.all
 end

 def new
  @foodtype = FoodType.new
 end

 def create
  @foodtype = FoodType.new(foodtype_params)
  if @foodtype.save
    redirect_to [@foodtype]
  else
    render "new"
  end
 end

 def show
  @foodtype = FoodType.find(params[:id])
 end

 def edit
  @foodtype = FoodType.find(params[:id])
 end

 def update
  @foodtype = FoodType.find(params[:id])
  if @foodtype.update(foodtype_params)
    redirect_to @foodtype
  else
    render "edit"
  end   
 end

private
  def foodtype_params
    params.require(:food_type).permit(:name)
  end
end
