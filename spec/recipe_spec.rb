require 'spec_helper'

describe Recipe do
  it('validates presence of name') do
    recipe = Recipe.new({:name => ""})
    expect(recipe.save()).to(eq(false))
  end

  it('takes a name and makes it titlecase') do
    recipe = Recipe.create({:name => 'potato'})
    expect(recipe.name()).to(eq('Potato'))
  end
end