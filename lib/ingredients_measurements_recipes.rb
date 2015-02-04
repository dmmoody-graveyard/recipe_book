class IngredientsMeasurementsRecipes < ActiveRecord::Base
  belongs_to :recipes
  belongs_to :ingredients 
  belongs_to :measurements 
end