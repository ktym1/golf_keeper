require 'spec_helper'

describe Course do
  let(:course) { Course.new(name: "Glen Abbey", capacity: 18)}
  
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

  it 'return true when golf party size is less than capacity' do
    expect(course.availability(10)).to be_true
  end

  it "return false when party size is greater than capacity" do
    expect(course.availability(25)).to be_false
  end
end
