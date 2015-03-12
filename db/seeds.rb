# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


copper_creek = Course.create({name: "Copper Creek", course_length: 18})
woodington_lake = Course.create({name: "Woodington Lake", course_length: 18})


# Copper Creek: Men

# def create_holes(course, gender)
# (1..18).each do |hole|
# 	Hole.create({course_id: course.id, gender:"m", hole_number: hole, par: rand(5), handicap_rating: hole})
# 	end
# end

# Course.all.each do |course|
# 	create_holes(course, "M")
# 	create_holes(course, "F")
# end

#Copper creek holes
Hole.create(course_id: 1, gender: "m", hole_number: 1, par: 5, handicap_rating: 9)
Hole.create(course_id: 1, gender: "m", hole_number: 2, par: 4, handicap_rating: 1)
Hole.create(course_id: 1, gender: "m", hole_number: 3, par: 5, handicap_rating: 13)
Hole.create(course_id: 1, gender: "m", hole_number: 4, par: 4, handicap_rating: 7)
Hole.create(course_id: 1, gender: "m", hole_number: 5, par: 4, handicap_rating: 5)
Hole.create(course_id: 1, gender: "m", hole_number: 6, par: 3, handicap_rating: 17)
Hole.create(course_id: 1, gender: "m", hole_number: 7, par: 4, handicap_rating: 3)
Hole.create(course_id: 1, gender: "m", hole_number: 8, par: 3, handicap_rating: 15)
Hole.create(course_id: 1, gender: "m", hole_number: 9, par: 4, handicap_rating: 11)
Hole.create(course_id: 1, gender: "m", hole_number: 10, par: 4, handicap_rating: 2)
Hole.create(course_id: 1, gender: "m", hole_number: 11, par: 3, handicap_rating: 8)
Hole.create(course_id: 1, gender: "m", hole_number: 12, par: 4, handicap_rating: 14)
Hole.create(course_id: 1, gender: "m", hole_number: 13, par: 5, handicap_rating: 10)
Hole.create(course_id: 1, gender: "m", hole_number: 14, par: 3, handicap_rating: 18)
Hole.create(course_id: 1, gender: "m", hole_number: 15, par: 4, handicap_rating: 16)
Hole.create(course_id: 1, gender: "m", hole_number: 16, par: 4, handicap_rating: 6)
Hole.create(course_id: 1, gender: "m", hole_number: 17, par: 4, handicap_rating: 4)
Hole.create(course_id: 1, gender: "m", hole_number: 18, par: 5, handicap_rating: 12)

#Copper Creek Tees
Tee.create(course_id: 1, color: "Copper")
Tee.create(course_id: 1, color: "Blue")

#Copper Creek Copper Tee Yardages
Yardage.create(hole_id: 1, tee_id: 1, yards: 508)
Yardage.create(hole_id: 2, tee_id: 1, yards: 461)
Yardage.create(hole_id: 3, tee_id: 1, yards: 510)
Yardage.create(hole_id: 4, tee_id: 1, yards: 447)
Yardage.create(hole_id: 5, tee_id: 1, yards: 407)
Yardage.create(hole_id: 6, tee_id: 1, yards: 126)
Yardage.create(hole_id: 7, tee_id: 1, yards: 417)
Yardage.create(hole_id: 8, tee_id: 1, yards: 151)
Yardage.create(hole_id: 9, tee_id: 1, yards: 388)
Yardage.create(hole_id: 10, tee_id: 1, yards: 459)
Yardage.create(hole_id: 11, tee_id: 1, yards: 200)
Yardage.create(hole_id: 12, tee_id: 1, yards: 395)
Yardage.create(hole_id: 13, tee_id: 1, yards: 550)
Yardage.create(hole_id: 14, tee_id: 1, yards: 176)
Yardage.create(hole_id: 15, tee_id: 1, yards: 400)
Yardage.create(hole_id: 16, tee_id: 1, yards: 451)
Yardage.create(hole_id: 17, tee_id: 1, yards: 463)
Yardage.create(hole_id: 18, tee_id: 1, yards: 565)

#Copper Creek Blue Tee Yardages
Yardage.create(hole_id: 1, tee_id: 2, yards: 494)
Yardage.create(hole_id: 2, tee_id: 2, yards: 417)
Yardage.create(hole_id: 3, tee_id: 2, yards: 483)
Yardage.create(hole_id: 4, tee_id: 2, yards: 417)
Yardage.create(hole_id: 5, tee_id: 2, yards: 398)
Yardage.create(hole_id: 6, tee_id: 2, yards: 113)
Yardage.create(hole_id: 7, tee_id: 2, yards: 400)
Yardage.create(hole_id: 8, tee_id: 2, yards: 144)
Yardage.create(hole_id: 9, tee_id: 2, yards: 374)
Yardage.create(hole_id: 10, tee_id: 2, yards: 435)
Yardage.create(hole_id: 11, tee_id: 2, yards: 174)
Yardage.create(hole_id: 12, tee_id: 2, yards: 358)
Yardage.create(hole_id: 13, tee_id: 2, yards: 527)
Yardage.create(hole_id: 14, tee_id: 2, yards: 159)
Yardage.create(hole_id: 15, tee_id: 2, yards: 392)
Yardage.create(hole_id: 16, tee_id: 2, yards: 409)
Yardage.create(hole_id: 17, tee_id: 2, yards: 430)
Yardage.create(hole_id: 18, tee_id: 2, yards: 539)

#Woodington Lake Holes
Hole.create(course_id: 2, gender: "m", hole_number: 1, par: 4, handicap_rating: 3)
Hole.create(course_id: 2, gender: "m", hole_number: 2, par: 5, handicap_rating: 7)
Hole.create(course_id: 2, gender: "m", hole_number: 3, par: 3, handicap_rating: 13)
Hole.create(course_id: 2, gender: "m", hole_number: 4, par: 5, handicap_rating: 1)
Hole.create(course_id: 2, gender: "m", hole_number: 5, par: 4, handicap_rating: 5)
Hole.create(course_id: 2, gender: "m", hole_number: 6, par: 3, handicap_rating: 9)
Hole.create(course_id: 2, gender: "m", hole_number: 7, par: 4, handicap_rating: 17)
Hole.create(course_id: 2, gender: "m", hole_number: 8, par: 4, handicap_rating: 11)
Hole.create(course_id: 2, gender: "m", hole_number: 9, par: 4, handicap_rating: 15)
Hole.create(course_id: 2, gender: "m", hole_number: 10, par: 4, handicap_rating: 14)
Hole.create(course_id: 2, gender: "m", hole_number: 11, par: 3, handicap_rating: 16)
Hole.create(course_id: 2, gender: "m", hole_number: 12, par: 5, handicap_rating: 8)
Hole.create(course_id: 2, gender: "m", hole_number: 13, par: 4, handicap_rating: 4)
Hole.create(course_id: 2, gender: "m", hole_number: 14, par: 4, handicap_rating: 12)
Hole.create(course_id: 2, gender: "m", hole_number: 15, par: 4, handicap_rating: 2)
Hole.create(course_id: 2, gender: "m", hole_number: 16, par: 3, handicap_rating: 18)
Hole.create(course_id: 2, gender: "m", hole_number: 17, par: 5, handicap_rating: 10)
Hole.create(course_id: 2, gender: "m", hole_number: 18, par: 4, handicap_rating: 6)

#woodington lake Tees
Tee.create(course_id: 2, color: "Green")
Tee.create(course_id: 2, color: "Blue")

#Woodington lake Green Tee Yardages
Yardage.create(hole_id: 19, tee_id: 3, yards: 410)
Yardage.create(hole_id: 20, tee_id: 3, yards: 524)
Yardage.create(hole_id: 21, tee_id: 3, yards: 182)
Yardage.create(hole_id: 22, tee_id: 3, yards: 534)
Yardage.create(hole_id: 23, tee_id: 3, yards: 407)
Yardage.create(hole_id: 24, tee_id: 3, yards: 217)
Yardage.create(hole_id: 25, tee_id: 3, yards: 313)
Yardage.create(hole_id: 26, tee_id: 3, yards: 415)
Yardage.create(hole_id: 27, tee_id: 3, yards: 413)
Yardage.create(hole_id: 28, tee_id: 3, yards: 416)
Yardage.create(hole_id: 29, tee_id: 3, yards: 200)
Yardage.create(hole_id: 30, tee_id: 3, yards: 570)
Yardage.create(hole_id: 31, tee_id: 3, yards: 438)
Yardage.create(hole_id: 32, tee_id: 3, yards: 388)
Yardage.create(hole_id: 33, tee_id: 3, yards: 455)
Yardage.create(hole_id: 34, tee_id: 3, yards: 179)
Yardage.create(hole_id: 35, tee_id: 3, yards: 544)
Yardage.create(hole_id: 36, tee_id: 3, yards: 410)

#Woodington lake Blue Tee Yardages
Yardage.create(hole_id: 19, tee_id: 4, yards: 380)
Yardage.create(hole_id: 20, tee_id: 4, yards: 490)
Yardage.create(hole_id: 21, tee_id: 4, yards: 167)
Yardage.create(hole_id: 22, tee_id: 4, yards: 519)
Yardage.create(hole_id: 23, tee_id: 4, yards: 395)
Yardage.create(hole_id: 24, tee_id: 4, yards: 189)
Yardage.create(hole_id: 25, tee_id: 4, yards: 293)
Yardage.create(hole_id: 26, tee_id: 4, yards: 373)
Yardage.create(hole_id: 27, tee_id: 4, yards: 370)
Yardage.create(hole_id: 28, tee_id: 4, yards: 369)
Yardage.create(hole_id: 29, tee_id: 4, yards: 171)
Yardage.create(hole_id: 30, tee_id: 4, yards: 540)
Yardage.create(hole_id: 31, tee_id: 4, yards: 402)
Yardage.create(hole_id: 32, tee_id: 4, yards: 361)
Yardage.create(hole_id: 33, tee_id: 4, yards: 419)
Yardage.create(hole_id: 34, tee_id: 4, yards: 161)
Yardage.create(hole_id: 35, tee_id: 4, yards: 496)
Yardage.create(hole_id: 36, tee_id: 4, yards: 385)

#Players
Player.create(email: "player1@gmail.com", username: "player1", password: "testtest", password_confirmation: "testtest", gender: "m", handicap_index: 2.0, admin: true)
Player.create(email: "player2@gmail.com", username: "player2", password: "testtest", password_confirmation: "testtest", gender: "m", handicap_index: 3.0, admin: false)
Player.create(email: "player3@gmail.com", username: "player3", password: "testtest", password_confirmation: "testtest", gender: "m", handicap_index: 4.0, admin: false)
Player.create(email: "player4@gmail.com", username: "player4", password: "testtest", password_confirmation: "testtest", gender: "m", handicap_index: 2.0, admin: false)