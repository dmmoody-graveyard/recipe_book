class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.column :name, :string
    end
  end
end
