# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(email: "fake_email1@something.com")
user2 = User.create(email: "fake_email2@something.com")
user3 = User.create(email: "fake_email3@something.com")
user4 = User.create(email: "fake_email4@something.com")
user5 = User.create(email: "fake_email5@something.com")
user6 = User.create(email: "fake_email6@something.com")
user7 = User.create(email: "fake_email7@something.com")
user8 = User.create(email: "fake_email8@something.com")
user9 = User.create(email: "fake_email9@something.com")
user10 = User.create(email: "fake_email10@something.com")
user11 = User.create(email: "fake_email11@something.com")
user12 = User.create(email: "fake_email12@something.com")
user13 = User.create(email: "fake_email13@something.com")
user14 = User.create(email: "fake_email14@something.com")
user15 = User.create(email: "fake_email15@something.com")

url4 = ShortenedUrl.create!(user_id: user1.id, short_url: ShortenedUrl.random_code, long_url: "afjkdl.com")
url5 = ShortenedUrl.create(user_id: user2.id, short_url: ShortenedUrl.random_code, long_url: "afjkdl.com")
url6 = ShortenedUrl.create(user_id: user2.id, short_url: ShortenedUrl.random_code, long_url: "afjkdl.com")
url7 = ShortenedUrl.create(user_id: user3.id, short_url: ShortenedUrl.random_code, long_url: "www.google.com")
url8 = ShortenedUrl.create(user_id: user4.id, short_url: ShortenedUrl.random_code, long_url: "www.facebook.com")
url9 = ShortenedUrl.create(user_id: user4.id, short_url: ShortenedUrl.random_code, long_url: "www.app-academy.com")

visit1 = Visit.create(visitor_id: user1.id, link_id: url4.id)
visit2 = Visit.create(visitor_id: user1.id, link_id: url4.id)
visit3 = Visit.create(visitor_id: user1.id, link_id: url4.id)
visit4 = Visit.create(visitor_id: user2.id, link_id: url5.id)
visit5 = Visit.create(visitor_id: user3.id, link_id: url7.id)
visit6 = Visit.create(visitor_id: user4.id, link_id: url8.id)
