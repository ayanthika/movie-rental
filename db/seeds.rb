# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# Mayor.create(name: 'Emanuel', city: cities.first)

Movie.create(title: '2001: A Space Odyssey', rating: 9.5, genre: 'Science Fiction', status: 'Available')
Movie.create(title: 'The Last House On The Left', rating: 4.1, genre: 'Horror', status: 'Available')
Movie.create(title: 'Shrek', rating: 8.8, genre: 'Family', status: 'Rented')
Movie.create(title: '2012', rating: 3.9, genre: 'Drama', status: 'Rented')
Movie.create(title: 'Up', rating: 9.8, genre: 'Family', status: 'Available')
Movie.create(title: 'Intersteller', rating: 7.3, genre: 'Science Fiction', status: 'Available')
Movie.create(title: 'Shrek 2', rating: 8.8, genre: 'Family', status: 'Available')




