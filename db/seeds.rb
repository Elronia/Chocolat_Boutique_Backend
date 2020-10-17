# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'activerecord-reset-pk-sequence'
User.destroy_all
Treat.destroy_all
Order.destroy_all
OrderTreat.destroy_all

User.reset_pk_sequence
Treat.reset_pk_sequence
Order.reset_pk_sequence
OrderTreat.reset_pk_sequence

user01 = User.create(username: "katherine", password: "abc123")
user02 = User.create(username: "manny", password: "abc123")

treat01 = Treat.create(name: "Pistashio Travel Cake", description: "Pistachio pound cake with caramelized pistachios, glazed with white chocolate and topped with passion fruit pate de fruit and caramelized pistachios.", price: 18, image: "pistashio.jpg")
treat02 = Treat.create(name: "SIGNATURE CHEF'S SELECTION - 24 PIECE", description: "Our chef's curated selection of 24 chocolates is the ultimate expression of our craftsmanship and experience. This collection combines classic American and seasonal flavors with our time-tested French techniques.", price: 70, image: "selection.jpg")

