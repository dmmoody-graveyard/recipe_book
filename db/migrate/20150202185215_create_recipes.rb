class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.column :name, :string
      t.column :instructions, :text
      t.column :rating, :integer
    end
  end
end
