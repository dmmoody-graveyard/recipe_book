require 'spec_helper'

describe Ingredients_Measurements_Recipes do
  it{ should belong_to :recipes }
  it{ should belong_to :ingredients }
  it{ should belong_to :measurements }
end