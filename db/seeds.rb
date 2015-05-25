# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

c = Company.create(name: "Pepsi", description: "Pepsi is a carbonated soft drink that is produced ...")

m = User.new(name: 'John_manager', password: 'password1', password_confirmation: 'password1')
m.add_role 'manager'
m.company = c
m.save

