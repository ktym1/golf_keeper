require 'spec_helper'

describe Hole do 

  it "has a valid factory" do
    expect(build(:hole)).to be_valid
  end

  it "is invalid without a course id" do
    hole = build(:hole, course_id: nil)
    expect(hole).to have(1).errors_on(:course_id)
  end 

  it "is invalid if par is not an integer" do
    hole = build(:hole, par: "string")
    expect(hole).to have(1).errors_on(:par)
  end 

  it "is invalid if hole number is not within 1..18" do
    hole = build(:hole, hole_number: 20)
    expect(hole).to have(1).errors_on(:hole_number)
  end

  it "is invalid if handicap_rating is not within 1..18" do
    hole = build(:hole, handicap_rating: 20)
    expect(hole).to have(1).errors_on(:handicap_rating)
  end

  it "is invalid if gender value is not listed" do
    hole = build(:hole, gender: nil)
    expect(hole).to have(1).errors_on(:gender)
  end    


end