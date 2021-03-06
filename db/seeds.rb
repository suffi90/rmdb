# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

d1 = Director.create :name => "Danny Boyle", :birthday => Date.new(1956, 10, 20)
d2 = Director.create :name => "James Wan", :birthday => Date.new(1977, 2, 27)
d3 = Director.create :name => "Clint Eastwood", :birthday => Date.new(1930, 5, 31)

m1 = Movie.new :name => "127 Hours", :year => 2010, :runtime => 94, :studio => "Fox Searchlight Pictures"
m2 = Movie.new :name => "Saw", :year => 2004, :runtime => 102, :studio => "Lionsgate"
m3 = Movie.new :name => "Gran Torino", :year => 2008, :runtime => 116, :studio => "Warner Bros."

d1.movies << m1
d2.movies << m2
d3.movies << m3

r1 = Role.new :name => "Aron Ralston"
r2 = Role.new :name => "Dr. Lawrence Gordon"
r3 = Role.new :name => "John Kramer"

m1.roles << r1
m2.roles << r2
m2.roles << r3

a1 = Actor.create :name => "James Franco", :birthday => Date.new(1978, 4, 19)
a2 = Actor.create :name => "Cary Elwes", :birthday => Date.new(1962, 10, 26)
a3 = Actor.create :name => "Tobin Bell", :birthday => Date.new(1942, 8, 7)

a1.roles << r1
a2.roles << r2
a3.roles << r3