class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save 
      redirect_to [@recipe]
    else
      render "new"
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
    redirect_to @recipe
    else
      render "edit"
    end
  end

private
  def recipe_params
    params.require(:recipe).permit(:name, :type_kitchen, :preference, :serves_people, :time_preper, :level, :ingredients, :steps, :image) 
  end
end