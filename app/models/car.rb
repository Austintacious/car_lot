class Car < ActiveRecord::Base
  validates_presence_of :color
  validates_presence_of :year
  validates_presence_of :milage
  validates_numericality_of :year, greater_than_or_equal_to: 1980, less_than_or_equal_to: 2015
  validates_numericality_of :milage, greater_than_or_equal_to: 0
end
