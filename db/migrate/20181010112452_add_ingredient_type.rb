class AddIngredientType < ActiveRecord::Migration
  def change
    add_column :ingredient, :ingredient_type, :integer
  end
end
