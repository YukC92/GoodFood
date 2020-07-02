# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

User.destroy_all
Business.destroy_all

u1 = User.create!(
    username: 'Bruce',
    email: 'abc@aa.io',
    password: 'password123'
)

u2 = User.create!(
    username: 'Mary',
    email: 'mary@aa.io',
    password: '123456'
)

u3 = User.create!(
    username: 'Joe',
    email: 'joe@aa.io',
    password: '123456'
)



b1 = Business.create!(
    business_name: 'New Thai Elephant',
    address: '393 Bay St',
    city: 'San Francisco',
    state: 'CA',
    zip_code: '94133',
    latitude: 37.805484,
    longtitude: -122.413409,
    rating: 4,
    website: 'http://newthaielephant.com',
    user_id: ''
)
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/newthai1.jpg")
b1.photos.attach(io: file, filename:'newthai1.jpg')
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/newthai2.jpg")
b1.photos.attach(io: file, filename:'newthai2.jpg')
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/newthai3.jpg")
b1.photos.attach(io: file, filename:'newthai3.jpg')
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/newthai4.jpg")
b1.photos.attach(io: file, filename:'newthai4.jpg')

b2 = Business.create!(
    business_name: 'One Waan',
    address: '2922 Diamond St',
    city: 'San Francisco',
    state: 'CA',
    zip_code: '94131',
    latitude: 37.733359,
    longtitude: -122.434438,
    rating: 4,
    website: 'http://onewaansf.com',
    user_id: ''
)
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/onewaan1.jpg")
b2.photos.attach(io: file, filename:'onewaan1.jpg')
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/onewaan2.jpg")
b2.photos.attach(io: file, filename:'onewaan2.jpg')
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/onewaan3.jpg")
b2.photos.attach(io: file, filename:'onewaan3.jpg')
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/onewaan4.jpg")
b2.photos.attach(io: file, filename:'onewaan4.jpg')

b3 = Business.create!(
    business_name: 'Tacos El Patrón',
    address: '1500 S Van Ness Ave Ste 100',
    city: 'San Francisco',
    state: 'CA',
    zip_code: '94110',
    latitude: 37.789866,
    longtitude: -122.421729,
    rating: 4,
    website: '',
    user_id: ''
)
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/tacoselpatron1.jpg")
b3.photos.attach(io: file, filename:'tacoselpatron1.jpg')
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/tacoselpatron2.jpg")
b3.photos.attach(io: file, filename:'tacoselpatron2.jpg')
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/tacoselpatron3.jpg")
b3.photos.attach(io: file, filename:'tacoselpatron3.jpg')
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/tacoselpatron4.jpg")
b3.photos.attach(io: file, filename:'tacoselpatron4.jpg')