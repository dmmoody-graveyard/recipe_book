class Ingredient < ActiveRecord::Base
  has_and_belongs_to_many :recipes
  has_one :ingredients_recipes
  has_one :measurements, :through => 'ingredients_recipes'

  validates :name, :presence => true 
end