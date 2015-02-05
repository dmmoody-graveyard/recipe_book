require 'spec_helper'

describe Category do
  it { should have_and_belong_to_many :recipes }

  it('validates presence of name') do
    category = Category.new(:name => "")
    expect(category.save).to eq(false)
  end
end