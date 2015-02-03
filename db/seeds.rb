# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

gcmAppParams = { 
		name: "Taxi Tapp GCM",
		connections: 1,
		auth_key: "AIzaSyBndHXXnl7L0P8H4LpVGATPNwMDNXE1viQ"
	}

gcmApp = Rpush::Gcm::App::new(gcmAppParams)
gcmApp.save!

user1 = {
	username: "cooldude58",
	first_name: "Chad",
	last_name: "Man",
	latitude: 18.4880483,
	longitude: -69.9628111
}

user2 = {
	username: "somedude42",
	first_name: "Chuck",
	last_name: "Something",
	latitude: nil,
	longitude: nil
}

user3 = {
	username: "taximan",
	first_name: "Roberto",
	last_name: "Placeres",
	latitude: 18.5024625,
	longitude: -69.969787
}

user4 = {
	username: "cabbers",
	first_name: "Andres",
	last_name: "Marques",
	latitude: nil,
	longitude: nil
}

users = [user1, user2, user3, user4]

users.each { |u|
	record = User.new(u)
	record.save!
	if(record.id > 2)
		taxi = Taxi.new
		taxi.name = record.name
		taxi.available = true
		taxi.latitude = record.latitude
		taxi.longitude = record.longitude
		taxi.user = record
		taxi.save!
	end
}
