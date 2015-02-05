class DropRecipeList < ActiveRecord::Migration
  def change
    drop_table :recipe_list
  end
end
