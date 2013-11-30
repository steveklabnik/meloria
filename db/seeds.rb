# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Customer.create({
  name: "Testing",
  phone: "555-555-5555",
  email: "sample@example.com",
  date_on_waiting_list: Time.now,
  status: 1,
  local: true,
  location: "LA",
  credit: "None",
  want: "A sweet sleeve",
  notes: "None here.",
})
