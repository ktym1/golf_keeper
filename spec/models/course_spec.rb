require 'spec_helper'

describe Course do
  
  it "is valid with a name" do
  	course = Course.new(
  		name: "Glen Abbey")
  	expect(course).to be_valid
  end

  it "is invalid with a duplicate name" do
  	Course.create(
  		name: "Glen Abbey")
  	course = Course.create(
  		name: "Glen Abbey")
  	expect(course).to have(1).errors_on(:name)
  end
end
