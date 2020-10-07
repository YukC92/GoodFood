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
Review.destroy_all

#Users

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

u4 = User.create!(
    username: 'Aram',
    email: 'aram@aa.io',
    password: '123456'
)

u5 = User.create!(
    username: 'Darren',
    email: 'daren@aa.io',
    password: '123456'
)

u6 = User.create!(
    username: 'Curry',
    email: 'curry@aa.io',
    password: '123456'
)

u7 = User.create!(
    username: 'Jason',
    email: 'jason@aa.io',
    password: '123456'
)

u8 = User.create!(
    username: 'Betty',
    email: 'betty@aa.io',
    password: '123456'
)

#Businesses

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


#reviews

#New Thai Elephant
review0 = Review.create!(content: "We dined  outside during the pandemic. It was a nice little set up. I like that the menu offers variety, but not an overwhelming amount of options.  The service was decent, not exceptional.
I had the iced honey green tea and vegetarian spring rolls. The green tea had a very floral taste, almost Jasmine. I enjoyed my tea and spring rolls very much. The spring rolls are a light refreshing meal, the mint makes it wonderful on a hot day. I will say that they weren't very generous with the tofu, and that was a disappointment.
My friend had the chicken satay and mango shrimp salad. The chicken was pretty good. She said the salad was great. I had some of her Thai iced tea, that was delicious! Really sweet, but definitely a winner. My other friend had Thai iced coffee, and reported that it wasn't remarkable in any way.
I'm glad we tried this place and I'd come back here again. The ramen looked tempting, but it was too hot for soup.",
user_id: u2.id, business_id: b1.id, rating: 4)
review13 = Review.create!(content: "A little bit pricey but absolutely amazing service & taste!!!

Interior - they have plenty of outdoor seating during COVID, and so glad that I made my first stop of eating out here since the pandemic happened. The restaurant is right in the corner of 4th, in the heart of downtown San Mateo

Service - I asked the server if we could get everything in to go containers just to be safe, and he happily agreed and offered top notch service. Food comes out really quickly too. The ambience is also great with outdoor music.

Taste - really good Thai food, portion is decent as well. Everything we ordered was better than what we expected, Crispy Pork and Pineapple fried rice were both really tasty and definitely recommend!", 
user_id: u1.id, business_id: b1.id, rating: 3)
review14 = Review.create!(content: "Came here over the weekend for takeout and great news - they're open during shelter in place! The last time I was here was a year ago during their soft opening. I was interested in retrying this place and I ordered the crab fried rice again. It was a little disappointing - dry and not very flavorful. I also would have preferred more cilantro or green onion.

I would come back and give their other items a try if I was in the area. They are located on a corner in downtown. Street parking is available and we were able to snag a spot easily in the afternoon.", 
user_id: u3.id, business_id: b1.id, rating: 5)
review15 = Review.create!(content: "Very yummy for your tummy Thai food.

We were seated within 10 minutes after arriving.  Table for 2 are those small ones, so, if you order multiple dishes, you will run out of space and fast.",
user_id: u4.id, business_id: b1.id, rating: 4)
review16 = Review.create!(content: "Did takeout during covid and the food / portions were excellent! Definitely recommend this place.",
user_id: u5.id, business_id: b1.id, rating: 4)
review17 = Review.create!(content: "This is a great spot for some low cost Thai food.  The place is located just a few blocks from Fisherman's Wharf and offers variety to the area.  Most of the restaurants around here are a bit higher in price and so finding this place was a relief to both the wallet and the desire to find just a simple spot for a tasty meal.  ", 
user_id: u6.id, business_id: b1.id, rating: 4)
review18 = Review.create!(content: "Highly recommend the duck noodle soup with egg noodles here!

The duck is roasted and super flavorful. The broth is light and pairs well with the flavors of the duck. It looks like a simple bowl of noodles but the flavors are fantastic if you love duck!", 
user_id: u7.id, business_id: b1.id, rating: 4)

#One Waan
review2 = Review.create!(content: "One Waan is a solid restaurant with exceptional service. Love coming here for Thai staples and occasionally branch out into other dishes. The dishes are always beautifully arranged and colorful. I feel like their portions are generous and reasonably priced, and some of their dishes are great if you don't want a bunch of carbs. I like the red curry and the corn fritters a lot, and their cocktails are unique and very tropical.

The service here really shines. During the SIP they have a clear system and very fast and easy pickup/online ordering. Definitely call or use their website rather than app delivery - the service seems to be a lot faster.", 
user_id: u2.id, business_id: b2.id, rating: 3)
review19 = Review.create!(content: "Alex is a king. He cares so much about his employees and his community. In the midst of the 2020 pandemic, he goes as far as to wash down the bus stop outside before going home.

Red curry here is on the sweeter side if you enjoy that. Tender chicken.

Support them!", 
user_id: u3.id, business_id: b2.id, rating: 4)
review20 = Review.create!(content: "Really nice pops of flavor alongside a focus on aesthetics.

And really, what more could you ask for?

The Mango Sticky Rice was the star of the show.  This featured perfectly ripe slices of mango beautifully wrapped around a mound of pink sticky rice and garnished with fruit bits and coconut sauce.  

We also enjoyed their One Waan House Crackling Salad (loved their crispy shrimp chips, but would opt to add chicken or shrimp to it next time to make it more filling) and their Volcanic Beef (another artistically plated beauty w/ tender chunks of well-flavored beef).

Everything was delicious and we are looking forward to coming back for more dishes!", 
user_id: u4.id, business_id: b2.id, rating: 3)
review21 = Review.create!(content: "TLDR; one of the best Thai places in SF

Tom Yum was delicious, very lemon grassy not too sour. My favorite Tom Yum in SF.

The tartare was sooooo good. comes with crispy 'crackers' that makes the texture mix so well with the tartare.

The mango sticky rice looks so good too. I'll be back to try it and more!", user_id: u7.id, business_id: b2.id, rating: 5)
review22 = Review.create!(content: "My favorite chicken wings in the city. I can't get over the sweet and sour sauce, the glaze, and the crisp. Just the right amount for one, too. As long as they don't raise the price, I'll keep coming back for the wings for a while. 
Would go again.", user_id: u6.id, business_id: b2.id, rating: 4)
review23 = Review.create!(content: "I haven't been here since Osha Thai closed its doors. I came here on a Sunday evening and we were seated right away. The decor and layout has changed slightly since they took over.", user_id: u1.id, business_id: b2.id, rating: 4)
review24 = Review.create!(content: "I don't know who this place got a four star rating, this place is mediocre at best, the food was bland and not worth the price, when I'm in the mood for Thai food again I will not be getting it from here!", 
user_id: u8.id, business_id: b2.id, rating: 2)

#Tacos El Patrón
review3 = Review.create!(content: "If you've been to one taqueria, you've been to them all right?  not here!  I ordered takeout: reg Tacos, Pastor, Pollo, Suadero!!!  Mulitas with Asada, reg Burrito carnitas, a side of arroz and a Birria!!!   Flippin' Delicious!    Try a Suadero and Birria for something different.  Could be my new fav Taco joint in SF!", user_id: u3.id, business_id: b3.id, rating: 5)
review25 = Review.create!(content: "I love meat and I love cheese. I love tacos and I helllaellaella love quesadillas. So seeing what appears to be a hybrid of the two--I'm all in! I came across quesabirra tacos on IG and was curious to see if there were any close by to my work. Quesabirria is a combo of cheese and birria, which is a traditional Mexican Stew. Usually comes with consome or beef broth for dippin. It was mandatory for me to try it. Browsed yelp for places that served up birria and El Patron popped up; I bookmarked them so hard.", user_id: u2.id, business_id: b3.id, rating: 4)
review26 = Review.create!(content: "I tried this place a few times. Both times the food was great. My favorites are the el taco patron specials; shrimp and the Berria tacos. I also tried carne asada, mulito and chicken tacos however the chicken was my least favorite. I'll have to checkout the pleasant hill location closer to my house as there were a few things I disliked about this location. Both times I placed my order I was told 15mins but the order wasn't ready for another 15/20 mins after arrival. Also very difficult speaking with the ladies on both occasions. Had to repeat our order several times even after I got a Spanish speaker to place the order for me. Looking forward to trying other items on this menu.", user_id: u1.id, business_id: b3.id, rating: 4)
review27 = Review.create!(content: "The birria hype is real!! Best tacos I've eaten so far! The meat is nice and tender. Dipping it into the consommé adds more juicy flavor. Also, the tacos are packed with meat and cheese!
I highly recommend for anyone to try this place. Two tacos are definitely filling for one person.", user_id: u4.id, business_id: b3.id, rating: 4)
review28 = Review.create!(content: "Was craving for tacos and was wondering what the hype is about birria tacos here, so finally decided to give them a try. When I tried them for the first time before the pandemic they were amazing, crispy, cheesy, juicy. Also tried and would recommend asada fries and tacos de lengua. Actually there are so many options and meats to choose from, you'ww definitely find something to your liking.", user_id: u5.id, business_id: b3.id, rating: 4)
review29 = Review.create!(content: "The first two times I tried delicious birria tacos were from dubious sources without a yelp page, without seating, & most likely without a food license. Our birria mania brought us to Tacos El Patrón -- one of the last sit-down restaurants we patronized before the shelter in place so this review details our March visit.", user_id: u7.id, business_id: b3.id, rating: 4)
review30 = Review.create!(content: "Hands down my favorite taco joint in San Francisco (pre & post COVID). Correct me if I'm wrong but I think this is one of the few, if not the only restaurant in SF that serves birria tacos -- and they are delicious! The beef stew meat and broth on the side go so well together (remember to add the cheese!) The flavors are intense but not too overwhelming. Another plus: these are HUGE tacos; I can only eat 3 at a time.", 
    user_id: u8.id, business_id: b3.id, rating: 5)