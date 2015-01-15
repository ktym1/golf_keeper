require 'spec_helper'

describe Hole do 

  it "has a valid factory" do
    expect(build(:hole)).to be_valid
  end

end