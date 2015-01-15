require 'spec_helper'

describe Course do
  
  it "has a valid factory" do 
    expect(build(:course)).to be_valid
  end

  it "is invalid without a name" do
  	course = build(:course, name: nil)
    expect(course).to have(1).errors_on(:name)
  end

  it "is invalid without 18 holes" do
    course = build(:course, course_length: 0)
    expect(course).to have(1).errors_on(:course_length)
  end

  it "is invalid with a duplicate name" do
  	Course.create(
  		name: "Glen Abbey", course_length: 18)
  	course = Course.new(
  		name: "Glen Abbey", course_length: 18)
  	expect(course).to have(1).errors_on(:name)
  end
end
