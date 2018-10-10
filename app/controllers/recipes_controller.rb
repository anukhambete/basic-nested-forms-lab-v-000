class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(ingredient_type: 'one')
    @recipe.ingredients.build(ingredient_type: 'two')
  end

  def create
    recipe = Recipe.create(recipe_params)
    redirect_to recipes_path
  end

  private

  def person_params
    params.require(:recipe).permit(
      :title,
      ingredients_attributes: [
        :street_address_1,
        :street_address_2,
        :ingredient_type
      ]
    )
  end

end
