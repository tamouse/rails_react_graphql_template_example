# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"
require "factory_bot_rails"

User.find_or_create_by(email: "admin") do |a|
  a.admin = true
  a.password = "password"
  a.password_confirmation = "password"
end

4.times do
  FactoryBot.create :full_user
end
