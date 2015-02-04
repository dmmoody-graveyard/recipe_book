require 'spec_helper'

describe Measurement do
  it{ should have_many :recipes }
  it{ should have_many :ingredients }

end
