require 'spec_helper'
require 'shoulda-matchers'

describe Category do
  it { should have_and_belong_to_many :recipes }
end