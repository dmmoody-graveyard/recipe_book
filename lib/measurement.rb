class Measurement < ActiveRecord::Base
  has_one :ingredients_recipes
  has_one :ingredient, :through => :ingredients_recipes
end