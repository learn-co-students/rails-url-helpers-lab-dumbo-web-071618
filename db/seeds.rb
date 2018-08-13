# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.destroy_all
Student.create(first_name: "Bran", last_name: "Fran")
Student.create(first_name: "Bob", last_name: "Dob")
Student.create(first_name: "Bill", last_name: "Dill")
Student.create(first_name: "Bobby", last_name: "Dobby")
Student.create(first_name: "Ding", last_name: "Ring")
