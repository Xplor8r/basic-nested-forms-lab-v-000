class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.create
    @recipe.ingredients.create
  end

  def create
    recipe = Recipe.create(recipe_params)
    recipe.update(recipe_params)
  end

  private

  def recipe_params
    params.require(:recipe).permit(title: title, ingredient_attributels: [
      :id,
      :name,
      :quantity
    ]
    )
  end

end
