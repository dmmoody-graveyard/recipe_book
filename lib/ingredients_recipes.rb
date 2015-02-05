class IngredientsRecipes < ActiveRecord::Base
  belongs_to :measurement
  belongs_to :ingredient
end