require 'spec_helper'

describe IngredientsRecipes do
  it{ should belong_to :measurement }
  it{ should belong_to :ingredient }

end