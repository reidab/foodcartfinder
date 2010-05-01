class Report < ActiveRecord::Base
  FOOD_TYPES = ['tasty', 'yucky', 'other']
  PRICE_RANGES = [["< $5", 1], ["< $10", 2], ["< $15", 3], ["more", 4]]
  
  serialize :food_types
end
