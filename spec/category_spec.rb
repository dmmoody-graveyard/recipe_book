require 'spec_helper'

describe Category do
  it { should have_and_belong_to_many :recipes }

  it('validates presence of name') do
    category = Category.new(:name => "")
    expect(category.save).to eq(false)
  end

  it('takes a category name and capitalizes it') do
    category = Category.create :name => "mexican"
    expect(category.name).to eq("Mexican")
  end
end