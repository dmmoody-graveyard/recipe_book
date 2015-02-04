require 'spec_helper'

describe Recipe do
  it{ should have_and_belong_to_many :categories }
  it{ should have_and_belong_to_many :ingredients }

  it('validates presence of name') do
    recipe = Recipe.new({:name => ""})
    expect(recipe.save()).to(eq(false))
  end

  it('takes a name and makes it titlecase') do
    recipe = Recipe.create({:name => 'potato'})
    expect(recipe.name()).to(eq('Potato'))
  end
end