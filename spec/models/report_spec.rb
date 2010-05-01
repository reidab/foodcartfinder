require 'spec_helper'

describe Report do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :latitude => 1.5,
      :longitude => 1.5,
      :hours => "value for hours",
      :price_range => 1,
      :vegan => false,
      :vegetarian => false,
      :gluten_free => false,
      :comments => "value for comments"
    }
  end

  it "should create a new instance given valid attributes" do
    Report.create!(@valid_attributes)
  end
end
