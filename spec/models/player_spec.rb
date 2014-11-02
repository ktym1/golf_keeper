require 'spec_helper'

describe Player do
  it "is valid with a username" do
  	player = Player.new(
  		username: "Jack Johnson",
  		email: "jackjohnson@gmail.com",
  		password: "testtest",
  		password_confirmation: "testtest",
  		handicap_index: 8.0,
  		gender: "m"
  		)
  	expect(player).to be_valid
  end

  it "is invalid without a username" do
  	expect(Player.new(username: nil)).to have(1).errors_on(:username)
  end
  
  it "is invalid with a duplicate name" do
  	Player.create(
  		username: "Jack Johnson",
  		email: "jackjohnson@gmail.com",
  		password: "testtest",
  		password_confirmation: "testtest",
  		handicap_index: 7.0,
  		gender: "m"
  		)
  	player = Player.create(
  		username: "Jack Johnson",
  		email: "jack@gmail.com",
  		password: "testing",
  		password_confirmation: "testing",
  		handicap_index: 8.5,
  		gender: "f"
  		)
  	expect(player).to have(1).errors_on(:username)
  end

  it "is valid with a username under 20 characters" do
  	player = Player.new(
  		username: "123456789123456789123456789",
  		email: "jack@gmail.com",
  		password: "testing",
  		password_confirmation: "testing",
  		handicap_index: 8.5,
  		gender: "f"
  		)
  	expect(player).to have(1).errors_on(:username)
  end

  it "is valid with an email" do
  		player = Player.new(
  		username: "Jack Johnson",
  		email: "jackjohnson@gmail.com",
  		password: "testtest",
  		password_confirmation: "testtest",
  		handicap_index: 8.0,
  		gender: "m"
  		)
  	expect(player).to be_valid
  end

  it "is valid with an email under 30 characters" do
  	player = Player.new(
  		username: "Jack Johnson",
  		email: "jack123456789101112131415@gmail.com",
  		password: "testing",
  		password_confirmation: "testing",
  		handicap_index: 8.5,
  		gender: "f"
  		)
  	expect(player).to have(1).errors_on(:email)
  end

   it "is invalid without an email" do
  	# expect(Player.new(email: nil)).to have(1).errors_on(:email)
  end

  it "is valid with an email that's not case-sensitive " do
      player = Player.new(
      username: "Jack Johnson",
      email: "JACKJOHNSON@gmail.com",
      password: "testtest",
      password_confirmation: "testtest",
      handicap_index: 8.0,
      gender: "m"
      )
    expect(player).to be_valid
  end
  it "is invalid with an email non-standard format"
  it "is valid with a gender of 'm'"
  it "is valid with a gender of 'M'"
  it "is valid with a gender of 'f'"
  it "is valid with a gender of 'F'"
  it "is valid with a password length >= 6 characters"
  it "is valid with a handicap_index of a float"
  
end
