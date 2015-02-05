class DropIngredientsMeasurementsRecipes < ActiveRecord::Migration
  def change
    drop_table :ingredients_measurements_recipes
  end
end
