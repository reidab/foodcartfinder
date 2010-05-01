class Report < ActiveRecord::Base
  FOOD_TYPES = ['tasty', 'yucky', 'other']
  PRICE_RANGES = [["< $5", 1], ["< $10", 2], ["< $15", 3], ["more", 4]]
  DIETS = ['Vegan', 'Vegetarian', 'Gluten Free', 'Bacon', 'Kosher', 'Halal', 'Dairy Free', 'Pets']
  
  serialize :food_types
  serialize :diet_friendliness
end
