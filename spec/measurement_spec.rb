require 'spec_helper'

describe Measurement do
  it{ should has_many :ingredients_recipes }
end
