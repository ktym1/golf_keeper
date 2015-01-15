require 'spec_helper'

describe Hole do 

  it "has a valid factory" do
    expect(build(:hole)).to be_valid
  end

  it "is invalid without a course id" do
    hole = build(:hole, course_id: nil)
    expect(hole).to have(1).errors_on(:course_id)
  end 

end