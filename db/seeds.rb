# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Business.delete_all

u1 = User.create!(
    username: 'Bruce',
    email: 'abc@aa.io',
    password: 'password123'
)

b1 = Business.create!(
    business_name: 'New Thai Elephant',
    address: '393 Bay St',
    city: 'San Francisco',
    state: 'CA',
    zip_code: '94133',
    latitude: '37.805484',
    longtitude: '-122.413409',
    rating: '4',
    website: '',
    user_id: ''
)