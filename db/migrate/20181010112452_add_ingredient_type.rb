class AddIngredientType < ActiveRecord::Migration
  def change
    add_column :ingredient_type, :recipe_id, :integer
  end
end
