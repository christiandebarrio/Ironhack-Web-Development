# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

(1..50).each do |index|
  Contact.create(name: "name#{index}",
    address: "c/ Av #{index}",
    phone: "000 000 0#{index}",
    email: "name#{index}@dominio.com"
  )
end