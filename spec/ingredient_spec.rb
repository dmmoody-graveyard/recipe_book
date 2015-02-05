require 'spec_helper'

describe Ingredient do
  it{ should have_and_belong_to_many :recipes }
  it{ should have_one :ingredients_recipes }
  it{ should have_one :measurements }

  it('validates presence of name') do
    ingredient = Ingredient.new(:name => "")
    expect(ingredient.save()).to eq(false)
  end
end