# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a = User.create(email: 'jane@jane.com', password: 'password', password_confirmation: 'password')
a.items.create(name: 'Madewell heels', price: 149.50, category: 'shoes')
a.items.create(name: 'Christmas market earrings', price: 30.00, category: 'accessories')

b = User.create(email: 'john@john.com', password: 'password', password_confirmation: 'password')
b.items.create(name: 'Herschel backpack', price: 69.00, category: 'luggage')
b.items.create(name: 'iPhone case', price: 15.00, category: 'accessories')
