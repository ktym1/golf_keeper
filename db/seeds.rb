# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# copper_creek = Course.create({name: "Copper Creek"})
# woodington_lake = Course.create({name: "Woodington Lake"})


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

# Hole.create({course_id: 1, gender: "m", hole_number: 1, par: 5, handicap_rating: 9})
# Hole.create({course_id: 1, gender: "m", hole_number: 2, par: 4, handicap_rating: 1})
# Hole.create({course_id: 1, gender: "m", hole_number: 3, par: 5, handicap_rating: 13})
# Hole.create({course_id: 1, gender: "m", hole_number: 4, par: 4, handicap_rating: 7})
# Hole.create({course_id: 1, gender: "m", hole_number: 5, par: 4, handicap_rating: 5})
# Hole.create({course_id: 1, gender: "m", hole_number: 6, par: 3, handicap_rating: 17})
# Hole.create({course_id: 1, gender: "m", hole_number: 7, par: 4, handicap_rating: 3})
# Hole.create({course_id: 1, gender: "m", hole_number: 8, par: 3, handicap_rating: 15})
# Hole.create({course_id: 1, gender: "m", hole_number: 9, par: 4, handicap_rating: 11})
# Hole.create({course_id: 1, gender: "m", hole_number: 10, par: 4, handicap_rating: 2})
# Hole.create({course_id: 1, gender: "m", hole_number: 11, par: 3, handicap_rating: 8})
# Hole.create({course_id: 1, gender: "m", hole_number: 12, par: 4, handicap_rating: 14})
# Hole.create({course_id: 1, gender: "m", hole_number: 13, par: 5, handicap_rating: 10})
# Hole.create({course_id: 1, gender: "m", hole_number: 14, par: 3, handicap_rating: 18})
# Hole.create({course_id: 1, gender: "m", hole_number: 15, par: 4, handicap_rating: 16})
# Hole.create({course_id: 1, gender: "m", hole_number: 16, par: 4, handicap_rating: 6})
# Hole.create({course_id: 1, gender: "m", hole_number: 17, par: 4, handicap_rating: 4})
# Hole.create({course_id: 1, gender: "m", hole_number: 18, par: 4, handicap_rating: 12})

# #Copper Creek: Women

# Hole.create({course_id: 1, gender: "f", hole_number: 1, par: 5, handicap_rating: 9})
# Hole.create({course_id: 1, gender: "f", hole_number: 2, par: 4, handicap_rating: 7})
# Hole.create({course_id: 1, gender: "f", hole_number: 3, par: 5, handicap_rating: 5})
# Hole.create({course_id: 1, gender: "f", hole_number: 4, par: 4, handicap_rating: 3})
# Hole.create({course_id: 1, gender: "f", hole_number: 5, par: 4, handicap_rating: 1})
# Hole.create({course_id: 1, gender: "f", hole_number: 6, par: 3, handicap_rating: 17})
# Hole.create({course_id: 1, gender: "f", hole_number: 7, par: 4, handicap_rating: 11})
# Hole.create({course_id: 1, gender: "f", hole_number: 8, par: 3, handicap_rating: 15})
# Hole.create({course_id: 1, gender: "f", hole_number: 9, par: 4, handicap_rating: 13})
# Hole.create({course_id: 1, gender: "f", hole_number: 10, par: 4, handicap_rating: 4})
# Hole.create({course_id: 1, gender: "f", hole_number: 11, par: 3, handicap_rating: 6})
# Hole.create({course_id: 1, gender: "f", hole_number: 12, par: 4, handicap_rating: 14})
# Hole.create({course_id: 1, gender: "f", hole_number: 13, par: 5, handicap_rating: 2})
# Hole.create({course_id: 1, gender: "f", hole_number: 14, par: 3, handicap_rating: 16})
# Hole.create({course_id: 1, gender: "f", hole_number: 15, par: 4, handicap_rating: 18})
# Hole.create({course_id: 1, gender: "f", hole_number: 16, par: 4, handicap_rating: 12})
# Hole.create({course_id: 1, gender: "f", hole_number: 17, par: 4, handicap_rating: 10})
# Hole.create({course_id: 1, gender: "f", hole_number: 18, par: 4, handicap_rating: 8})

# #Woodington Lake: Men

# Hole.create({course_id: 2, gender: "m", hole_number: 1, par: 4, handicap_rating: 3})
# Hole.create({course_id: 2, gender: "m", hole_number: 2, par: 5, handicap_rating: 7})
# Hole.create({course_id: 2, gender: "m", hole_number: 3, par: 3, handicap_rating: 13})
# Hole.create({course_id: 2, gender: "m", hole_number: 4, par: 5, handicap_rating: 1})
# Hole.create({course_id: 2, gender: "m", hole_number: 5, par: 4, handicap_rating: 5})
# Hole.create({course_id: 2, gender: "m", hole_number: 6, par: 3, handicap_rating: 9})
# Hole.create({course_id: 2, gender: "m", hole_number: 7, par: 4, handicap_rating: 17})
# Hole.create({course_id: 2, gender: "m", hole_number: 8, par: 4, handicap_rating: 11})
# Hole.create({course_id: 2, gender: "m", hole_number: 9, par: 4, handicap_rating: 15})
# Hole.create({course_id: 2, gender: "m", hole_number: 10, par: 4, handicap_rating: 4})
# Hole.create({course_id: 2, gender: "m", hole_number: 11, par: 3, handicap_rating: 3})
# Hole.create({course_id: 2, gender: "m", hole_number: 12, par: 5, handicap_rating: 5})
# Hole.create({course_id: 2, gender: "m", hole_number: 13, par: 4, handicap_rating: 4})
# Hole.create({course_id: 2, gender: "m", hole_number: 14, par: 4, handicap_rating: 4})
# Hole.create({course_id: 2, gender: "m", hole_number: 15, par: 4, handicap_rating: 4})
# Hole.create({course_id: 2, gender: "m", hole_number: 16, par: 3, handicap_rating: 3})
# Hole.create({course_id: 2, gender: "m", hole_number: 17, par: 5, handicap_rating: 5})
# Hole.create({course_id: 2, gender: "m", hole_number: 18, par: 4, handicap_rating: 4})

# #Woodington Lake: Women

# Hole.create({course_id: 2, gender: "f", hole_number: 1, par: 4, handicap_rating: 3})
# Hole.create({course_id: 2, gender: "f", hole_number: 2, par: 5, handicap_rating: 7})
# Hole.create({course_id: 2, gender: "f", hole_number: 3, par: 3, handicap_rating: 13})
# Hole.create({course_id: 2, gender: "f", hole_number: 4, par: 5, handicap_rating: 1})
# Hole.create({course_id: 2, gender: "f", hole_number: 5, par: 4, handicap_rating: 5})
# Hole.create({course_id: 2, gender: "f", hole_number: 6, par: 3, handicap_rating: 9})
# Hole.create({course_id: 2, gender: "f", hole_number: 7, par: 4, handicap_rating: 17})
# Hole.create({course_id: 2, gender: "f", hole_number: 8, par: 4, handicap_rating: 11})
# Hole.create({course_id: 2, gender: "f", hole_number: 9, par: 4, handicap_rating: 15})
# Hole.create({course_id: 2, gender: "f", hole_number: 10, par: 4, handicap_rating: 4})
# Hole.create({course_id: 2, gender: "f", hole_number: 11, par: 3, handicap_rating: 3})
# Hole.create({course_id: 2, gender: "f", hole_number: 12, par: 5, handicap_rating: 5})
# Hole.create({course_id: 2, gender: "f", hole_number: 13, par: 4, handicap_rating: 4})
# Hole.create({course_id: 2, gender: "f", hole_number: 14, par: 4, handicap_rating: 4})
# Hole.create({course_id: 2, gender: "f", hole_number: 15, par: 4, handicap_rating: 4})
# Hole.create({course_id: 2, gender: "f", hole_number: 16, par: 3, handicap_rating: 3})
# Hole.create({course_id: 2, gender: "f", hole_number: 17, par: 5, handicap_rating: 5})
# Hole.create({course_id: 2, gender: "f", hole_number: 18, par: 4, handicap_rating: 4})

#Players: Men

# Player.create({email:"kerrymui@gmail.com", username:"kerrymui", password:"testtest", password_confirmation:"testtest", handicap_index: 8.6, gender: "M"})
# Player.create({email:"fabiogelsomini@gmail.com", username:"fabiogelsomini", password:"testtest", password_confirmation:"testtest", handicap_index: 14.5, gender: "M"})

#Players: Women

# Player.create({email:"mabelmui@gmail.com", username:"mabelmui", password:"testtest", password_confirmation:"testtest", handicap_index: 4.7, gender: "F"})
# Player.create({email:"nicolewang@gmail.com", username:"nicolewang", password:"testtest", password_confirmation:"testtest", handicap_index: 9.5, gender: "F"})

#Ratings: Men
# Rating.create({slope_rating: 142, course_rating: 74.3, gender: "M", tee_id: 1})
# Rating.create({slope_rating: 140, course_rating: 71.9, gender: "M", tee_id: 2})
# Rating.create({slope_rating: 131, course_rating: 69.7, gender: "M", tee_id: 3})
# Rating.create({slope_rating: 120, course_rating: 65.7, gender: "M", tee_id: 4})

#Ratings: Women
# Rating.create({slope_rating: 137, course_rating: 75.4, gender: "F", tee_id: 3})
# Rating.create({slope_rating: 125, course_rating: 70.5, gender: "F", tee_id: 4})

#Rounds: Men
# Round.create({course_id: 1, round_length: 18, player_id: 1, start_hole: 1, tee_id: 2})
# Round.create({course_id: 2, round_length: 9, player_id: 1, start_hole: 10, tee_id: 6})
# Round.create({course_id: 1, round_length: 18, player_id: 2, start_hole: 4, tee_id: 3})
# Round.create({course_id: 2, round_length: 9, player_id: 2, start_hole: 14, tee_id: 5})

#Rounds: Women
# Round.create({course_id: 1, round_length: 18, player_id: 3, start_hole: 10, tee_id: 4})
# Round.create({course_id: 2, round_length: 9, player_id: 3, start_hole: 1, tee_id: 8})
# Round.create({course_id: 1, round_length: 18, player_id: 4, start_hole: 1, tee_id: 4})
# Round.create({course_id: 2, round_length: 9, player_id: 4, start_hole: 18, tee_id: 4})

#Scores: Men 
# Score.create({round_id: 1, hole_id: 1, score: 4})
# Score.create({round_id: 1, hole_id: 2, score: 4})
# Score.create({round_id: 1, hole_id: 3, score: 4})
# Score.create({round_id: 1, hole_id: 4, score: 3})
# Score.create({round_id: 1, hole_id: 5, score: 7})
# Score.create({round_id: 1, hole_id: 6, score: 3})
# Score.create({round_id: 1, hole_id: 7, score: 5})
# Score.create({round_id: 1, hole_id: 8, score: 2})
# Score.create({round_id: 1, hole_id: 9, score: 4})
# Score.create({round_id: 1, hole_id: 10, score: 4})
# Score.create({round_id: 1, hole_id: 11, score: 5})
# Score.create({round_id: 1, hole_id: 12, score: 4})
# Score.create({round_id: 1, hole_id: 13, score: 4})
# Score.create({round_id: 1, hole_id: 14, score: 3})
# Score.create({round_id: 1, hole_id: 15, score: 4})
# Score.create({round_id: 1, hole_id: 16, score: 3})
# Score.create({round_id: 1, hole_id: 17, score: 4})
# Score.create({round_id: 1, hole_id: 18, score: 5})


# Score.create({round_id: 2, hole_id: 10, score: 3})
# Score.create({round_id: 2, hole_id: 11, score: 4})
# Score.create({round_id: 2, hole_id: 12, score: 4})
# Score.create({round_id: 2, hole_id: 13, score: 4})
# Score.create({round_id: 2, hole_id: 14, score: 5})
# Score.create({round_id: 2, hole_id: 15, score: 3})
# Score.create({round_id: 2, hole_id: 16, score: 4})
# Score.create({round_id: 2, hole_id: 17, score: 2})
# Score.create({round_id: 2, hole_id: 18, score: 4})

# Score.create({round_id: 3, hole_id: 1, score: 3})
# Score.create({round_id: 3, hole_id: 2, score: 3})
# Score.create({round_id: 3, hole_id: 3, score: 4})
# Score.create({round_id: 3, hole_id: 4, score: 3})
# Score.create({round_id: 3, hole_id: 5, score: 3})
# Score.create({round_id: 3, hole_id: 6, score: 5})
# Score.create({round_id: 3, hole_id: 7, score: 4})
# Score.create({round_id: 3, hole_id: 8, score: 3})
# Score.create({round_id: 3, hole_id: 9, score: 4})
# Score.create({round_id: 3, hole_id: 10, score: 3})
# Score.create({round_id: 3, hole_id: 11, score: 4})
# Score.create({round_id: 3, hole_id: 12, score: 5})
# Score.create({round_id: 3, hole_id: 13, score: 3})
# Score.create({round_id: 3, hole_id: 14, score: 4})
# Score.create({round_id: 3, hole_id: 15, score: 3})
# Score.create({round_id: 3, hole_id: 16, score: 3})
# Score.create({round_id: 3, hole_id: 17, score: 4})
# Score.create({round_id: 3, hole_id: 18, score: 5})

# Score.create({round_id: 4, hole_id: 14, score: 4})
# Score.create({round_id: 4, hole_id: 15, score: 3})
# Score.create({round_id: 4, hole_id: 16, score: 3})
# Score.create({round_id: 4, hole_id: 17, score: 4})
# Score.create({round_id: 4, hole_id: 18, score: 4})
# Score.create({round_id: 4, hole_id: 1, score: 5})
# Score.create({round_id: 4, hole_id: 2, score: 4})
# Score.create({round_id: 4, hole_id: 3, score: 4})
# Score.create({round_id: 4, hole_id: 4, score: 5})
# Score.create({round_id: 4, hole_id: 5, score: 3})


#Scores: Women

# Score.create({round_id: 5, hole_id: 10, score: 4})
# Score.create({round_id: 5, hole_id: 11, score: 4})
# Score.create({round_id: 5, hole_id: 12, score: 5})
# Score.create({round_id: 5, hole_id: 13, score: 5})
# Score.create({round_id: 5, hole_id: 14, score: 4})
# Score.create({round_id: 5, hole_id: 15, score: 4})
# Score.create({round_id: 5, hole_id: 16, score: 4})
# Score.create({round_id: 5, hole_id: 17, score: 5})
# Score.create({round_id: 5, hole_id: 18, score: 6})
# Score.create({round_id: 5, hole_id: 1, score: 6})
# Score.create({round_id: 5, hole_id: 2, score: 5})
# Score.create({round_id: 5, hole_id: 3, score: 5})
# Score.create({round_id: 5, hole_id: 4, score: 6})
# Score.create({round_id: 5, hole_id: 5, score: 3})
# Score.create({round_id: 5, hole_id: 6, score: 4})
# Score.create({round_id: 5, hole_id: 7, score: 5})
# Score.create({round_id: 5, hole_id: 8, score: 4})
# Score.create({round_id: 5, hole_id: 9, score: 4})

# Score.create({round_id: 6, hole_id: 1, score: 4})
# Score.create({round_id: 6, hole_id: 2, score: 6})
# Score.create({round_id: 6, hole_id: 3, score: 4})
# Score.create({round_id: 6, hole_id: 4, score: 6})
# Score.create({round_id: 6, hole_id: 5, score: 4})
# Score.create({round_id: 6, hole_id: 6, score: 4})
# Score.create({round_id: 6, hole_id: 7, score: 5})
# Score.create({round_id: 6, hole_id: 8, score: 4})
# Score.create({round_id: 6, hole_id: 9, score: 5})

# Score.create({round_id: 7, hole_id: 1, score: 5})
# Score.create({round_id: 7, hole_id: 2, score: 5})
# Score.create({round_id: 7, hole_id: 3, score: 4})
# Score.create({round_id: 7, hole_id: 4, score: 4})
# Score.create({round_id: 7, hole_id: 5, score: 7})
# Score.create({round_id: 7, hole_id: 6, score: 4})
# Score.create({round_id: 7, hole_id: 7, score: 6})
# Score.create({round_id: 7, hole_id: 8, score: 3})
# Score.create({round_id: 7, hole_id: 9, score: 5})
# Score.create({round_id: 7, hole_id: 10, score: 4})
# Score.create({round_id: 7, hole_id: 11, score: 5})
# Score.create({round_id: 7, hole_id: 12, score: 4})
# Score.create({round_id: 7, hole_id: 13, score: 4})
# Score.create({round_id: 7, hole_id: 14, score: 3})
# Score.create({round_id: 7, hole_id: 15, score: 4})
# Score.create({round_id: 7, hole_id: 16, score: 4})
# Score.create({round_id: 7, hole_id: 17, score: 5})
# Score.create({round_id: 7, hole_id: 18, score: 5})

# Score.create({round_id: 8, hole_id: 18, score: 4})
# Score.create({round_id: 8, hole_id: 1, score: 5})
# Score.create({round_id: 8, hole_id: 2, score: 6})
# Score.create({round_id: 8, hole_id: 3, score: 4})
# Score.create({round_id: 8, hole_id: 4, score: 5})
# Score.create({round_id: 8, hole_id: 5, score: 3})
# Score.create({round_id: 8, hole_id: 6, score: 5})
# Score.create({round_id: 8, hole_id: 7, score: 5})
# Score.create({round_id: 8, hole_id: 8, score: 5})

#Tees Copper Creek

# Tee.create({colour: "copper", course_id: 1})
# Tee.create({colour: "blue", course_id: 1})
# Tee.create({colour: "white", course_id: 1})
# Tee.create({colour: "red", course_id: 1})

#Tees Woodington Lake
# Tee.create({colour: "green", course_id: 2})
# Tee.create({colour: "blue", course_id: 2})
# Tee.create({colour: "white", course_id: 2})
# Tee.create({colour: "red", course_id: 2})

#Yardage: Copper Creek - Men's Hole
# Yardage.create({hole_id: 1, tee_id: 1, yards: 508})
# Yardage.create({hole_id: 1, tee_id: 2, yards: 494})
# Yardage.create({hole_id: 1, tee_id: 3, yards: 465})
# Yardage.create({hole_id: 1, tee_id: 4, yards: 443})

# Yardage.create({hole_id: 2, tee_id: 1, yards: 461})
# Yardage.create({hole_id: 2, tee_id: 2, yards: 417})
# Yardage.create({hole_id: 2, tee_id: 3, yards: 361})
# Yardage.create({hole_id: 2, tee_id: 4, yards: 307})

# Yardage.create({hole_id: 3, tee_id: 1, yards: 510})
# Yardage.create({hole_id: 3, tee_id: 2, yards: 483})
# Yardage.create({hole_id: 3, tee_id: 3, yards: 449})
# Yardage.create({hole_id: 3, tee_id: 4, yards: 401})

# Yardage.create({hole_id: 4, tee_id: 1, yards: 447})
# Yardage.create({hole_id: 4, tee_id: 2, yards: 417})
# Yardage.create({hole_id: 4, tee_id: 3, yards: 398})
# Yardage.create({hole_id: 4, tee_id: 4, yards: 338})

# Yardage.create({hole_id: 5, tee_id: 1, yards: 407})
# Yardage.create({hole_id: 5, tee_id: 2, yards: 398})
# Yardage.create({hole_id: 5, tee_id: 3, yards: 357})
# Yardage.create({hole_id: 5, tee_id: 4, yards: 280})

# Yardage.create({hole_id: 6, tee_id: 1, yards: 126})
# Yardage.create({hole_id: 6, tee_id: 2, yards: 113})
# Yardage.create({hole_id: 6, tee_id: 3, yards: 103})
# Yardage.create({hole_id: 6, tee_id: 4, yards: 93})

# Yardage.create({hole_id: 7, tee_id: 1, yards: 417})
# Yardage.create({hole_id: 7, tee_id: 2, yards: 400})
# Yardage.create({hole_id: 7, tee_id: 3, yards: 379})
# Yardage.create({hole_id: 7, tee_id: 4, yards: 272})

# Yardage.create({hole_id: 8, tee_id: 1, yards: 151})
# Yardage.create({hole_id: 8, tee_id: 2, yards: 144})
# Yardage.create({hole_id: 8, tee_id: 3, yards: 138})
# Yardage.create({hole_id: 8, tee_id: 4, yards: 131})

# Yardage.create({hole_id: 9, tee_id: 1, yards: 388})
# Yardage.create({hole_id: 9, tee_id: 2, yards: 374})
# Yardage.create({hole_id: 9, tee_id: 3, yards: 334})
# Yardage.create({hole_id: 9, tee_id: 4, yards: 283})

# Yardage.create({hole_id: 10, tee_id: 1, yards: 459})
# Yardage.create({hole_id: 10, tee_id: 2, yards: 435})
# Yardage.create({hole_id: 10, tee_id: 3, yards: 420})
# Yardage.create({hole_id: 10, tee_id: 4, yards: 375})

# Yardage.create({hole_id: 11, tee_id: 1, yards: 200})
# Yardage.create({hole_id: 11, tee_id: 2, yards: 174})
# Yardage.create({hole_id: 11, tee_id: 3, yards: 149})
# Yardage.create({hole_id: 11, tee_id: 4, yards: 118})

# Yardage.create({hole_id: 12, tee_id: 1, yards: 395})
# Yardage.create({hole_id: 12, tee_id: 2, yards: 358})
# Yardage.create({hole_id: 12, tee_id: 3, yards: 343})
# Yardage.create({hole_id: 12, tee_id: 4, yards: 309})

# Yardage.create({hole_id: 13, tee_id: 1, yards: 550})
# Yardage.create({hole_id: 13, tee_id: 2, yards: 527})
# Yardage.create({hole_id: 13, tee_id: 3, yards: 472})
# Yardage.create({hole_id: 13, tee_id: 4, yards: 436})

# Yardage.create({hole_id: 14, tee_id: 1, yards: 176})
# Yardage.create({hole_id: 14, tee_id: 2, yards: 159})
# Yardage.create({hole_id: 14, tee_id: 3, yards: 139})
# Yardage.create({hole_id: 14, tee_id: 4, yards: 113})

# Yardage.create({hole_id: 15, tee_id: 1, yards: 400})
# Yardage.create({hole_id: 15, tee_id: 2, yards: 392})
# Yardage.create({hole_id: 15, tee_id: 3, yards: 358})
# Yardage.create({hole_id: 15, tee_id: 4, yards: 276})

# Yardage.create({hole_id: 16, tee_id: 1, yards: 451})
# Yardage.create({hole_id: 16, tee_id: 2, yards: 409})
# Yardage.create({hole_id: 16, tee_id: 3, yards: 383})
# Yardage.create({hole_id: 16, tee_id: 4, yards: 328})

# Yardage.create({hole_id: 17, tee_id: 1, yards: 463})
# Yardage.create({hole_id: 17, tee_id: 2, yards: 430})
# Yardage.create({hole_id: 17, tee_id: 3, yards: 408})
# Yardage.create({hole_id: 17, tee_id: 4, yards: 346})

# Yardage.create({hole_id: 18, tee_id: 1, yards: 565})
# Yardage.create({hole_id: 18, tee_id: 2, yards: 539})
# Yardage.create({hole_id: 18, tee_id: 3, yards: 480})
# Yardage.create({hole_id: 18, tee_id: 4, yards: 422})

#Yardage: Copper Creek - Women's Hole
# Yardage.create({hole_id: 19, tee_id: 3, yards: 465})
# Yardage.create({hole_id: 19, tee_id: 4, yards: 443})

# Yardage.create({hole_id: 20, tee_id: 3, yards: 361})
# Yardage.create({hole_id: 20, tee_id: 4, yards: 307})

# Yardage.create({hole_id: 21, tee_id: 3, yards: 449})
# Yardage.create({hole_id: 21, tee_id: 4, yards: 401})

# Yardage.create({hole_id: 22, tee_id: 3, yards: 398})
# Yardage.create({hole_id: 22, tee_id: 4, yards: 338})

# Yardage.create({hole_id: 23, tee_id: 3, yards: 357})
# Yardage.create({hole_id: 23, tee_id: 4, yards: 280})

# Yardage.create({hole_id: 24, tee_id: 3, yards: 103})
# Yardage.create({hole_id: 24, tee_id: 4, yards: 93})

# Yardage.create({hole_id: 25, tee_id: 3, yards: 379})
# Yardage.create({hole_id: 25, tee_id: 4, yards: 272})

# Yardage.create({hole_id: 26, tee_id: 3, yards: 138})
# Yardage.create({hole_id: 26, tee_id: 4, yards: 131})

# Yardage.create({hole_id: 27, tee_id: 3, yards: 334})
# Yardage.create({hole_id: 27, tee_id: 4, yards: 283})

# Yardage.create({hole_id: 28, tee_id: 3, yards: 420})
# Yardage.create({hole_id: 28, tee_id: 4, yards: 375})

# Yardage.create({hole_id: 29, tee_id: 3, yards: 149})
# Yardage.create({hole_id: 29, tee_id: 4, yards: 118})

# Yardage.create({hole_id: 30, tee_id: 3, yards: 343})
# Yardage.create({hole_id: 30, tee_id: 4, yards: 309})

# Yardage.create({hole_id: 31, tee_id: 3, yards: 472})
# Yardage.create({hole_id: 31, tee_id: 4, yards: 436})

# Yardage.create({hole_id: 32, tee_id: 3, yards: 139})
# Yardage.create({hole_id: 32, tee_id: 4, yards: 113})

# Yardage.create({hole_id: 33, tee_id: 3, yards: 358})
# Yardage.create({hole_id: 33, tee_id: 4, yards: 276})

# Yardage.create({hole_id: 34, tee_id: 3, yards: 383})
# Yardage.create({hole_id: 34, tee_id: 4, yards: 328})

# Yardage.create({hole_id: 35, tee_id: 3, yards: 408})
# Yardage.create({hole_id: 35, tee_id: 4, yards: 346})

# Yardage.create({hole_id: 36, tee_id: 3, yards: 480})
# Yardage.create({hole_id: 36, tee_id: 4, yards: 422})


#Yardage: Woodington Lake - Men's Hole

# Yardage.create({hole_id: 37, tee_id: 5, yards: 410})
# Yardage.create({hole_id: 37, tee_id: 6, yards: 380})
# Yardage.create({hole_id: 37, tee_id: 7, yards: 359})
# Yardage.create({hole_id: 37, tee_id: 8, yards: 309})

# Yardage.create({hole_id: 38, tee_id: 5, yards: 524})
# Yardage.create({hole_id: 38, tee_id: 6, yards: 490})
# Yardage.create({hole_id: 38, tee_id: 7, yards: 456})
# Yardage.create({hole_id: 38, tee_id: 8, yards: 401})

# Yardage.create({hole_id: 39, tee_id: 5, yards: 182})
# Yardage.create({hole_id: 39, tee_id: 6, yards: 167})
# Yardage.create({hole_id: 39, tee_id: 7, yards: 147})
# Yardage.create({hole_id: 39, tee_id: 8, yards: 91})

# Yardage.create({hole_id: 40, tee_id: 5, yards: 534})
# Yardage.create({hole_id: 40, tee_id: 6, yards: 519})
# Yardage.create({hole_id: 40, tee_id: 7, yards: 495})
# Yardage.create({hole_id: 40, tee_id: 8, yards: 434})

# Yardage.create({hole_id: 41, tee_id: 5, yards: 407})
# Yardage.create({hole_id: 41, tee_id: 6, yards: 395})
# Yardage.create({hole_id: 41, tee_id: 7, yards: 381})
# Yardage.create({hole_id: 41, tee_id: 8, yards: 335})

# Yardage.create({hole_id: 42, tee_id: 5, yards: 217})
# Yardage.create({hole_id: 42, tee_id: 6, yards: 189})
# Yardage.create({hole_id: 42, tee_id: 7, yards: 171})
# Yardage.create({hole_id: 42, tee_id: 8, yards: 149})

# Yardage.create({hole_id: 43, tee_id: 5, yards: 313})
# Yardage.create({hole_id: 43, tee_id: 6, yards: 293})
# Yardage.create({hole_id: 43, tee_id: 7, yards: 273})
# Yardage.create({hole_id: 43, tee_id: 8, yards: 253})

# Yardage.create({hole_id: 44, tee_id: 5, yards: 415})
# Yardage.create({hole_id: 44, tee_id: 6, yards: 373})
# Yardage.create({hole_id: 44, tee_id: 7, yards: 352})
# Yardage.create({hole_id: 44, tee_id: 8, yards: 298})

# Yardage.create({hole_id: 45, tee_id: 5, yards: 413})
# Yardage.create({hole_id: 45, tee_id: 6, yards: 370})
# Yardage.create({hole_id: 45, tee_id: 7, yards: 337})
# Yardage.create({hole_id: 45, tee_id: 8, yards: 313})

# Yardage.create({hole_id: 46, tee_id: 5, yards: 416})
# Yardage.create({hole_id: 46, tee_id: 6, yards: 369})
# Yardage.create({hole_id: 46, tee_id: 7, yards: 342})
# Yardage.create({hole_id: 46, tee_id: 8, yards: 310})

# Yardage.create({hole_id: 47, tee_id: 5, yards: 200})
# Yardage.create({hole_id: 47, tee_id: 6, yards: 171})
# Yardage.create({hole_id: 47, tee_id: 7, yards: 148})
# Yardage.create({hole_id: 47, tee_id: 8, yards: 122})

# Yardage.create({hole_id: 48, tee_id: 5, yards: 570})
# Yardage.create({hole_id: 48, tee_id: 6, yards: 540})
# Yardage.create({hole_id: 48, tee_id: 7, yards: 513})
# Yardage.create({hole_id: 48, tee_id: 8, yards: 462})

# Yardage.create({hole_id: 49, tee_id: 5, yards: 438})
# Yardage.create({hole_id: 49, tee_id: 6, yards: 402})
# Yardage.create({hole_id: 49, tee_id: 7, yards: 386})
# Yardage.create({hole_id: 49, tee_id: 8, yards: 315})

# Yardage.create({hole_id: 50, tee_id: 5, yards: 388})
# Yardage.create({hole_id: 50, tee_id: 6, yards: 361})
# Yardage.create({hole_id: 50, tee_id: 7, yards: 338})
# Yardage.create({hole_id: 50, tee_id: 8, yards: 300})

# Yardage.create({hole_id: 51, tee_id: 5, yards: 455})
# Yardage.create({hole_id: 51, tee_id: 6, yards: 419})
# Yardage.create({hole_id: 51, tee_id: 7, yards: 393})
# Yardage.create({hole_id: 51, tee_id: 8, yards: 314})

# Yardage.create({hole_id: 52, tee_id: 5, yards: 179})
# Yardage.create({hole_id: 52, tee_id: 6, yards: 161})
# Yardage.create({hole_id: 52, tee_id: 7, yards: 145})
# Yardage.create({hole_id: 52, tee_id: 8, yards: 129})

# Yardage.create({hole_id: 53, tee_id: 5, yards: 544})
# Yardage.create({hole_id: 53, tee_id: 6, yards: 496})
# Yardage.create({hole_id: 53, tee_id: 7, yards: 470})
# Yardage.create({hole_id: 53, tee_id: 8, yards: 412})

# Yardage.create({hole_id: 54, tee_id: 5, yards: 410})
# Yardage.create({hole_id: 54, tee_id: 6, yards: 385})
# Yardage.create({hole_id: 54, tee_id: 7, yards: 361})
# Yardage.create({hole_id: 54, tee_id: 8, yards: 308})

#Yardage: Woodington Lake - Women's Hole

# Yardage.create({hole_id: , tee_id: , yards:})

# Yardage.create({hole_id: 55, tee_id: 7, yards: 359})
# Yardage.create({hole_id: 55, tee_id: 8, yards: 309})

# Yardage.create({hole_id: 56, tee_id: 7, yards: 456})
# Yardage.create({hole_id: 56, tee_id: 8, yards: 401})

# Yardage.create({hole_id: 57, tee_id: 7, yards: 147})
# Yardage.create({hole_id: 57, tee_id: 8, yards: 91})

# Yardage.create({hole_id: 58, tee_id: 7, yards: 495})
# Yardage.create({hole_id: 58, tee_id: 8, yards: 434})

# Yardage.create({hole_id: 59, tee_id: 7, yards: 381})
# Yardage.create({hole_id: 59, tee_id: 8, yards: 335})

# Yardage.create({hole_id: 60, tee_id: 7, yards: 171})
# Yardage.create({hole_id: 60, tee_id: 8, yards: 149})

# Yardage.create({hole_id: 61, tee_id: 7, yards: 273})
# Yardage.create({hole_id: 61, tee_id: 8, yards: 253})

# Yardage.create({hole_id: 62, tee_id: 7, yards: 352})
# Yardage.create({hole_id: 62, tee_id: 8, yards: 298})

# Yardage.create({hole_id: 63, tee_id: 7, yards: 337})
# Yardage.create({hole_id: 63, tee_id: 8, yards: 313})

# Yardage.create({hole_id: 64, tee_id: 7, yards: 342})
# Yardage.create({hole_id: 64, tee_id: 8, yards: 310})

# Yardage.create({hole_id: 65, tee_id: 7, yards: 148})
# Yardage.create({hole_id: 65, tee_id: 8, yards: 122})

# Yardage.create({hole_id: 66, tee_id: 7, yards: 513})
# Yardage.create({hole_id: 66, tee_id: 8, yards: 462})

# Yardage.create({hole_id: 67, tee_id: 7, yards: 386})
# Yardage.create({hole_id: 67, tee_id: 8, yards: 315})

# Yardage.create({hole_id: 68, tee_id: 7, yards: 338})
# Yardage.create({hole_id: 68, tee_id: 8, yards: 300})

# Yardage.create({hole_id: 69, tee_id: 7, yards: 393})
# Yardage.create({hole_id: 69, tee_id: 8, yards: 314})

# Yardage.create({hole_id: 70, tee_id: 7, yards: 145})
# Yardage.create({hole_id: 70, tee_id: 8, yards: 129})

# Yardage.create({hole_id: 71, tee_id: 7, yards: 470})
# Yardage.create({hole_id: 71, tee_id: 8, yards: 412})

# Yardage.create({hole_id: 72, tee_id: 7, yards: 361})
# Yardage.create({hole_id: 72, tee_id: 8, yards: 308})
