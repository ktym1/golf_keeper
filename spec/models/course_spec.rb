require 'spec_helper'

describe Course do
  
  it "is valid with a name and course_length" do
  	course = Course.new(
  		name: "Glen Abbey",
      course_length: 18)
  	expect(course).to be_valid
  end

  it "is invalid with a duplicate name" do
  	Course.create(
  		name: "Glen Abbey", course_length: 18)
  	course = Course.new(
  		name: "Glen Abbey", course_length: 18)
  	expect(course).to have(1).errors_on(:name)
  end
end
