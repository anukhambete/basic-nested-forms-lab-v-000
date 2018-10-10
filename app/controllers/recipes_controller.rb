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
    person = Person.create(person_params)
    redirect_to people_path
  end
end
