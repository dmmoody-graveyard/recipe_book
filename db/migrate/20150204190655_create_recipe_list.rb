class CreateRecipeList < ActiveRecord::Migration
  def change
    create_table :recipe_list do |t|
      t.integer :recipe_id
      t.integer :ingredient_id
      t.integer :measurement_id
      t.string :quantity
    end
  end
end
