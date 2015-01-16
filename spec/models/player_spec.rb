require 'spec_helper'

describe Player do
  
  it "has a valid factory" do 
    expect(build(:player)).to be_valid
  end

  # it "is valid with a username" do
  # 	player = Player.new(
  # 		username: "Jack Johnson",
  # 		email: "jackjohnson@gmail.com",
  # 		password: "testtest",
  # 		password_confirmation: "testtest",
  # 		handicap_index: 8.0,
  # 		gender: "m"
  # 		)
  # 	expect(player).to be_valid
  # end

  # it "is invalid without a username" do
  # 	expect(Player.new(username: nil)).to have(1).errors_on(:username)
  # end
  
  # it "is invalid with a duplicate name" do
  # 	Player.create(
  # 		username: "Jack Johnson",
  # 		email: "jackjohnson@gmail.com",
  # 		password: "testtest",
  # 		password_confirmation: "testtest",
  # 		handicap_index: 7.0,
  # 		gender: "m"
  # 		)
  # 	player = Player.create(
  # 		username: "Jack Johnson",
  # 		email: "jack@gmail.com",
  # 		password: "testing",
  # 		password_confirmation: "testing",
  # 		handicap_index: 8.5,
  # 		gender: "f"
  # 		)
  # 	expect(player).to have(1).errors_on(:username)
  # end

  # it "is valid with a username under 20 characters" do
  # 	player = Player.new(
  # 		username: "123456789123456789123456789",
  # 		email: "jack@gmail.com",
  # 		password: "testing",
  # 		password_confirmation: "testing",
  # 		handicap_index: 8.5,
  # 		gender: "f"
  # 		)
  # 	expect(player).to have(1).errors_on(:username)
  # end

#   it "is valid with an email" do
#   		player = Player.new(
#   		username: "Jack Johnson",
#   		email: "jackjohnson@gmail.com",
#   		password: "testtest",
#   		password_confirmation: "testtest",
#   		handicap_index: 8.0,
#   		gender: "m"
#   		)
#   	expect(player).to be_valid
#   end

#   it "is valid with an email under 30 characters" do
#   	player = Player.new(
#   		username: "Jack Johnson",
#   		email: "jack123456789101112131415@gmail.com",
#   		password: "testing",
#   		password_confirmation: "testing",
#   		handicap_index: 8.5,
#   		gender: "f"
#   		)
#   	expect(player).to have(1).errors_on(:email)
#   end

#    it "is invalid without an email" do
#   	# expect(Player.new(email: nil)).to have(1).errors_on(:email)
#   end

#   it "is valid with an email that's not case-sensitive " do
#       player = Player.new(
#       username: "Jack Johnson",
#       email: "JACKJOHNSON@gmail.com",
#       password: "testtest",
#       password_confirmation: "testtest",
#       handicap_index: 8.0,
#       gender: "m"
#       )
#     expect(player).to be_valid
#   end

#   it "is invalid with an email non-standard format" do
#     expect(Player.new(email: '.@.c')).to have(1).errors_on(:email)
#   end
  
#   it "is valid with a gender of 'm'" do
#     player = Player.new(
#       username: "Jack Johnson",
#       email: "JACKJOHNSON@gmail.com",
#       password: "testtest",
#       password_confirmation: "testtest",
#       handicap_index: 8.0,
#       gender: "m"
#       )
#     expect(player).to be_valid
#   end
    
#   it "is valid with a gender of 'M'" do
#        player = Player.new(
#       username: "Jack Johnson",
#       email: "JACKJOHNSON@gmail.com",
#       password: "testtest",
#       password_confirmation: "testtest",
#       handicap_index: 8.0,
#       gender: "M"
#       )
#     expect(player).to be_valid
#   end

#   it "is valid with a gender of 'f'" do
#        player = Player.new(
#       username: "Jack Johnson",
#       email: "JACKJOHNSON@gmail.com",
#       password: "testtest",
#       password_confirmation: "testtest",
#       handicap_index: 8.0,
#       gender: "f"
#       )
#     expect(player).to be_valid
#   end

#   it "is valid with a gender of 'F'" do
#        player = Player.new(
#       username: "Jack Johnson",
#       email: "JACKJOHNSON@gmail.com",
#       password: "testtest",
#       password_confirmation: "testtest",
#       handicap_index: 8.0,
#       gender: "F"
#       )
#     expect(player).to be_valid
#   end

#   it "is invalid with a gender that's non-standardized" do
#     expect(Player.new(gender: 'male')).to have(1).errors_on(:gender)
#   end

#   it "is invalid with a password length <= 6 characters" do
#     expect(Player.new(password: "test")).to have(1).errors_on(:password)
#   end

#   it "is invalid with password & password confirmation being different" do
#     player = Player.create(
#       username: "Jack Johnson",
#       email: "jackjohnson@gmail.com",
#       password: "testtest",
#       password_confirmation: "test",
#       handicap_index: 7.0,
#       gender: "m"
#       )
#     expect(player).to have(1).errors_on(:password_confirmation)
#   end

#   it "is valid with a handicap_index of a float" do
#     player = Player.new(
#       username: "Jack Johnson",
#       email: "jackjohnson@gmail.com",
#       password: "testtest",
#       password_confirmation: "testtest",
#       handicap_index: 9.5111,
#       gender: "m"
#       )
#     expect(player).to be_valid
#   end
   
#     it "is valid with a handicap_index of an integer" do
#     player = Player.new(
#       username: "Jack Johnson",
#       email: "jackjohnson@gmail.com",
#       password: "testtest",
#       password_confirmation: "testtest",
#       handicap_index: 8,
#       gender: "m"
#       )
#     expect(player).to be_valid
#   end 
end
