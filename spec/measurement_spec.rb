require 'spec_helper'

describe Measurement do
  it{ should have_one :ingredients_recipes }
  it{ should have_one :ingredient }
end
