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

  it 'return true when number of golfers is less than capacity' do
    expect(course.availability(10)).to be_true
  end

  it "return false when number of golfers is greater than capacity" do
    expect(course.availability(25)).to be_false
  end

  it "should return false when reservations plus number of golfers doesn't fit" do 
    reservation = Reservation.create(course: course, number_of_golfers: 4)
    expect(course.availability(17)).to be_false
  end

  it "should return true when course empty at 7am" do
    reservation_time = DateTime.new(2014,5,17,07,00,00)
    reservation = Reservation.create(number_of_golfers: 1, reservation_time: reservation_time)
  end
end
