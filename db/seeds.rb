# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

races = Race.create([
  {category: "White"},
  {category: "Black/African American"},
  {category: "Black/African American and White"},
  {category: "Asian"},
  {category: "Asian and White"},
  {category: "American Indian or Alaska Native"},
  {category: "American Indian/Alaska Native and Black/African American"},
  {category: "American Indian or Alaska Native and White "},
  {category: "Native Hawaiian or Other Pacific Islander"},
  {category: "Hispanic/Latino"}
])
