class CreateIngredientsMeasurementsRecipes < ActiveRecord::Migration
  def change
    create_table :ingredients_measurements_recipes do |t|
      t.column :ingredient_id, :integer
      t.column :measurement_id, :integer
      t.column :recipe_id, :integer
      t.column :quantity, :string
    end
  end
end
