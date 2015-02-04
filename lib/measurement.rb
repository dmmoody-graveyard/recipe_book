class Measurement < ActiveRecord::Base
  has_many :ingredients_measurements_recipes
  has_many :recipes, :through => :ingredients_measurements_recipes
  has_many :ingredients, :through => :ingredients_measurements_recipes
end