class Ingredient < ActiveRecord::Base
  has_many :ingredients_measurements_recipes
  has_many :measurements, :through => :ingredients_measurements_recipes
  has_many :recipes, :through => :ingredients_measurements_recipes
end