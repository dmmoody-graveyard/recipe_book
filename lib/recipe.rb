class Recipe < ActiveRecord::Base
  validates(:name, :presence => true)
  before_save(:title_case)

private

  define_method(:title_case) do
    if self.name != self.name.upcase
      self.name = (name().split(/(\W)/).map(&:capitalize).join)
    end
  end

end