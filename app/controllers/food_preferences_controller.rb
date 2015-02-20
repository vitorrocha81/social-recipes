class FoodPreferencesController < ApplicationController
  before_action :authenticate_admin!, only: [:create, :new,:edit, :update]
 
 def index
  @foodprefs = FoodPreference.all
 end

 def new
  @foodpref = FoodPreference.new
 end

 def create
  @foodpref = FoodPreference.new(foodpref_params)
  if @foodpref.save
    redirect_to [@foodpref]
  else
    render "new"
  end
 end

 def show
  @foodpref = FoodPreference.find(params[:id])
 end

 def edit
  @foodpref = FoodPreference.find(params[:id])
 end

 def update
  @foodpref = FoodPreference.find(params[:id])
  if @foodpref.update(foodpref_params)
    redirect_to @foodpref
  else
    render "edit"
  end   
 end

private
  def foodpref_params
    params.require(:food_preference).permit(:name)
  end
end
