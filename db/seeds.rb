# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Player.create!(name: "Erling Haland", email: "erling@example.com", password: "password", address: "1 Devon Ave, Chicago, Illinois 60645", position: "Forward", dob: Date.new(2000, 07, 21), level: "recreational")
Player.create!(name: "Lionel Messi", email: "lionel@example.com", password: "password", address: "2 Sacramento Ave, Chicago, IL 60645", position: "Midfield", dob: Date.new(1987, 06, 24), level: "recreational")
Player.create!(name: "Joao Felix", email: "joao@example.com", password: "password", address: "3 Devon Ave, Chicago, Illinois 60645", position: "Midfield", dob: Date.new(1999, 11, 10), level: "recreational")
Player.create!(name: "Rafael Marquez", email: "rafael@example.com", password: "password", address: "4 North California Ave, Chicago, IL 60645", position: "Defender", dob: Date.new(1979, 02, 13), level: "recreational")
Player.create!(name: "Manuel Neuer", email: "manuel@example.com", password: "password", address: "5 Devon Ave, Chicago, Illinois 60645", position: "Goalkeeper", dob: Date.new(1986, 03, 27), level: "recreational")
Player.create!(name: "Megan Rapinoe", email: "megan@example.com", password: "password", address: "1 Sacramento Ave, Chicago, IL 60645", position: "Midfield", dob: Date.new(1985, 07, 05), level: "recreational")
Player.create!(name: "Marta Vieira da Silva", email: "marta@example.com", password: "password", address: "2 Devon Ave, Chicago, IL 60645", position: "Forward", dob: Date.new(1986, 02, 19), level: "recreational")
Player.create!(name: "Joseline Montoya", email: "joseline@example.com", password: "password", address: "3 Sacramento Ave, Chicago, IL 60645", position: "Forward", dob: Date.new(2000, 07, 03), level: "recreational")
Player.create!(name: "Adrianna Franch", email: "adriana@example.com", password: "password", address: "4 Devon Ave, Chicago, IL 60645", position: "Goalkeeper", dob: Date.new(1990, 11, 12), level: "recreational")
Player.create!(name: "Julie Ertz", email: "julie@example.com", password: "password", address: "5 North California Ave, Chicago, IL 60645", position: "Defender", dob: Date.new(1992, 04, 06), level: "recreational")
