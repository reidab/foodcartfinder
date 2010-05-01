class Report < ActiveRecord::Base
  FOOD_TYPES = ['tasty', 'yucky', 'other']
  serialize :food_types
end
