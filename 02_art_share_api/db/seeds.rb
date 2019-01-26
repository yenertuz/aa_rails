# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
	{username: "yenertuz"},
	{username: "aniqaelahi"}
])

artworks = Artwork.create([
	{artist_id: User.first.id, title: "Mona Lisa", image_url: "www.monalisa.com" },
	{artist_id: User.first.id, title: "The Scream", image_url: "www.thescream.com"},
	{artist_id: User.last.id, title: "The Last Supper", image_url: "www.thelastsupper.com"},
	{artist_id: User.last.id, title: "Friends", image_url: "www.friends.com"}
])

artwork_shares = ArtworkShare.create([
	{viewer_id: User.last.id, artwork_id: Artwork.find(1)},
	{viewer_id: User.last.id, artwork_id: Artwork.find(2)},
	{viewer_id: User.first.id, artwork_id: Artwork.find(3)},
	{viewer_id: User.first.id, artwork_id: Artwork.find(4)}
])

