require 'spec_helper'

describe Ingredient do
  it{ should have_many :ingredients_measurements_recipes }
end