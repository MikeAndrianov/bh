# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

c = Company.create(name: "Pepsi", description: "Pepsi is a carbonated soft drink that is produced and manufactured by PepsiCo. Created and developed in 1893 and introduced as Brad's Drink, it was renamed as Pepsi-Cola on August 28, 1898.")

m = User.new(name: 'John_manager', password: 'password1', password_confirmation: 'password1')
m.add_role 'manager'
m.company = c
m.save

