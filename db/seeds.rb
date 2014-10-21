# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


copper_creek = Course.create({name: "Copper Creek"})
woodington_lake = Course.create({name: "Woodington Lake"})

# Copper Creek: Men

Hole.create({course_id: copper_creek, gender: "m", hole_number: 1, par: 5, handicap_rating: 9})
Hole.create({course_id: copper_creek, gender: "m", hole_number: 2, par: 4, handicap_rating: 1})
Hole.create({course_id: copper_creek, gender: "m", hole_number: 3, par: 5, handicap_rating: 13})
Hole.create({course_id: copper_creek, gender: "m", hole_number: 4, par: 4, handicap_rating: 7})
Hole.create({course_id: copper_creek, gender: "m", hole_number: 5, par: 4, handicap_rating: 5})
Hole.create({course_id: copper_creek, gender: "m", hole_number: 6, par: 3, handicap_rating: 17})
Hole.create({course_id: copper_creek, gender: "m", hole_number: 7, par: 4, handicap_rating: 3})
Hole.create({course_id: copper_creek, gender: "m", hole_number: 8, par: 3, handicap_rating: 15})
Hole.create({course_id: copper_creek, gender: "m", hole_number: 9, par: 4, handicap_rating: 11})
Hole.create({course_id: copper_creek, gender: "m", hole_number: 10, par: 4, handicap_rating: 2})
Hole.create({course_id: copper_creek, gender: "m", hole_number: 11, par: 3, handicap_rating: 8})
Hole.create({course_id: copper_creek, gender: "m", hole_number: 12, par: 4, handicap_rating: 14})
Hole.create({course_id: copper_creek, gender: "m", hole_number: 13, par: 5, handicap_rating: 10})
Hole.create({course_id: copper_creek, gender: "m", hole_number: 14, par: 3, handicap_rating: 18})
Hole.create({course_id: copper_creek, gender: "m", hole_number: 15, par: 4, handicap_rating: 16})
Hole.create({course_id: copper_creek, gender: "m", hole_number: 16, par: 4, handicap_rating: 6})
Hole.create({course_id: copper_creek, gender: "m", hole_number: 17, par: 4, handicap_rating: 4})
Hole.create({course_id: copper_creek, gender: "m", hole_number: 18, par: 4, handicap_rating: 12})