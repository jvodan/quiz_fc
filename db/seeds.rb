# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(email: 'lachlan@engines.org', password: 'password', password_confirmation: 'password', role: 0 ) if Rails.env.development?
User.create!(email: 'lach@engines.org', password: 'password', password_confirmation: 'password', confirmed_at: DateTime.now ) if Rails.env.development?
User.create!(email: 'lachdoug@gmail.com', password: 'password', password_confirmation: 'password' ) if Rails.env.development?