class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new

    @recipe.ingredients.build(address_type: '1')
    @recipe.addresses.build(address_type: '2')
  end

  def create
  end
end
