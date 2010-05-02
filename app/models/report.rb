class Report < ActiveRecord::Base
  FOOD_TYPES = ["American", "Asian", "BBQ", "Bento", "Bosnian", "Burritos", "Coffee", "Crepes", "Czech", "Dessert", "European", 
    "Falafel", "Fried Foods", "Hot Dogs/Sausages", "Ice Cream", "Indian", "Italian", "Japanese", "Mediterranean", "Mexican",
    "Milkshakes/Smoothies", "Peruvian", "Pizza", "Polish", "Rice Bowl", "Sandwiches", "Seafood", "Soup", "Thai", "Vietnamese", 
    "Waffles"]
  PRICE_RANGES = [["< $5", 1], ["< $10", 2], ["< $15", 3], ["more", 4]]
  DIETS = ['Vegan', 'Vegetarian', 'Gluten Free', 'Dairy Free', 'Kosher', 'Halal']
  
  serialize :food_types
  serialize :diet_friendliness
  
  def price_category
    self.price_range ? PRICE_RANGES[self.price_range][0] : nil
  end
end
