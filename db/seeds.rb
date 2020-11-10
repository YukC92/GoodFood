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
Category.destroy_all
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

#categories
c1 = Category.create!(name: "Restaurant")
c2 = Category.create!(name: "Boba")
c3 = Category.create!(name: "Cafe")

#Businesses

b1 = Business.create!(
    business_name: 'New Thai Elephant',
    address: '393 Bay St',
    city: 'San Francisco',
    state: 'CA',
    zip_code: '94133',
    latitude: 37.805484,
    longtitude: -122.413409,
    category_id: c1.id,
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
    category_id: c1.id,
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
    category_id: c1.id,
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

b4 = Business.create!(
    business_name: 'The Coffee Movement',
    address: '1030 Washington St',
    city: 'San Francisco',
    state: 'CA',
    zip_code: '94108',
    latitude: 37.794826,
    longtitude: -122.410273,
    category_id: c3.id,
    rating: 4,
    website: '',
    user_id: ''
)
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/coffeemovement1.jpg")
b4.photos.attach(io: file, filename:'coffeemovement1.jpg')
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/coffeemovement2.jpg")
b4.photos.attach(io: file, filename:'coffeemovement2.jpg')
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/coffeemovement3.jpg")
b4.photos.attach(io: file, filename:'coffeemovement3.jpg')
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/coffeemovement4.jpg")
b4.photos.attach(io: file, filename:'coffeemovement4.jpg')


b5 = Business.create!(
    business_name: 'Brew Cha',
    address: '3420 18th St',
    city: 'San Francisco',
    state: 'CA',
    zip_code: '94110',
    latitude: 37.762000,
    longtitude: -122.420063,
    category_id: c2.id,
    rating: 4,
    website: '',
    user_id: ''
)
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/brewcha1.jpg")
b5.photos.attach(io: file, filename:'brewcha1.jpg')
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/brewcha2.jpg")
b5.photos.attach(io: file, filename:'brewcha2.jpg')
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/brewcha3.jpg")
b5.photos.attach(io: file, filename:'brewcha3.jpg')
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/brewcha4.jpg")
b5.photos.attach(io: file, filename:'brewcha4.jpg')

b6 = Business.create!(
    business_name: 'House of Prime Rib',
    address: '1906 Van Ness Ave',
    city: 'San Francisco',
    state: 'CA',
    zip_code: '94109',
    latitude: 37.793452,
    longtitude: -122.422727,
    category_id: c1.id,
    rating: 4,
    website: '',
    user_id: ''
)
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/houseofprime1.jpg")
b6.photos.attach(io: file, filename:'houseofprime1.jpg')
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/houseofprime2.jpg")
b6.photos.attach(io: file, filename:'houseofprime2.jpg')
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/houseofprime3.jpg")
b6.photos.attach(io: file, filename:'houseofprime3.jpg')
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/houseofprime4.jpg")
b6.photos.attach(io: file, filename:'houseofprime4.jpg')


b7 = Business.create!(
    business_name: 'Hog Island Oyster Co',
    address: '1 Ferry Bldg',
    city: 'San Francisco',
    state: 'CA',
    zip_code: '94111',
    latitude: 37.796117,
    longtitude: -122.393610,
    category_id: c1.id,
    rating: 4,
    website: '',
    user_id: ''
)
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/hotisland1.jpg")
b7.photos.attach(io: file, filename:'hotisland1.jpg')
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/hotisland2.jpg")
b7.photos.attach(io: file, filename:'hotisland2.jpg')
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/hotisland3.jpg")
b7.photos.attach(io: file, filename:'hotisland3.jpg')
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/hotisland4.jpg")
b7.photos.attach(io: file, filename:'hotisland4.jpg')

b8 = Business.create!(
    business_name: 'Black Sugar',
    address: "320 O'Farrell St",
    city: 'San Francisco',
    state: 'CA',
    zip_code: '94102',
    latitude: 37.786311,
    longtitude: -122.410178,
    category_id: c2.id,
    rating: 4,
    website: '',
    user_id: ''
)
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/blacksugar1.jpg")
b8.photos.attach(io: file, filename:'blacksugar1.jpg')
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/blacksugar2.jpg")
b8.photos.attach(io: file, filename:'blacksugar2.jpg')
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/blacksugar3.jpg")
b8.photos.attach(io: file, filename:'blacksugar3.jpg')
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/blacksugar4.jpg")
b8.photos.attach(io: file, filename:'blacksugar4.jpg')

b9 = Business.create!(
    business_name: 'Tea Hut',
    address: '2815 California St',
    city: 'San Francisco',
    state: 'CA',
    zip_code: '94115',
    latitude: 37.787937,
    longtitude: -122.440803,
    category_id: c2.id,
    rating: 4,
    website: '',
    user_id: ''
)
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/teahut1.jpg")
b9.photos.attach(io: file, filename:'teahut1.jpg')
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/teahut2.jpg")
b9.photos.attach(io: file, filename:'teahut2.jpg')
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/teahut3.jpg")
b9.photos.attach(io: file, filename:'teahut3.jpg')
file = open("https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/teahut4.jpg")
b9.photos.attach(io: file, filename:'teahut4.jpg')



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

#The Coffee Movement
review58 = Review.create!(content: "Great coffee with very friendly coffee baristas. However, the pour over was not available during COVID-19. Will have to return when we are back to the new normal. Nevertheless, I enjoyed the suggested dark roast.  ", 
user_id: u2.id, business_id: b4.id, rating: 5)
review59 = Review.create!(content: "Amazing and friendly staff! It was my first visit and they broke down their beverages and pastries to figure out what I'd like best. During COVID, they have a cute open back truck parked out front to enjoy your coffee. I definitely will come back and recommend this coffee shop to others.", 
user_id: u1.id, business_id: b4.id, rating: 5)
review60 = Review.create!(content: "Simple menu, the barista was helpful but not intrusive.

Drink was quickly but still with care.

Taste of the Iced Ginger Spice Latte was delicious yet not too sweet like you'd get from a larger chain.

Attention to details; even their merchandising.", 
user_id: u3.id, business_id: b4.id, rating: 5)
review61 = Review.create!(content: "I came here to visit my friend Reef to try out his coffee shop. He introduced me to his coworker Bryan. First thing that I noticed was the aroma of the coffee shop and it smelled very refreshing!",
user_id: u4.id, business_id: b4.id, rating: 5)
review62 = Review.create!(content: "The service and the coffee was some of the best I've had in the city. Friendliest baristas I've chatted with in a while, and they were very knowledgeable too. Screw Blue Bottle and Philz, come here. I will be back because I want to keep them in business and they've earned it--this is really good coffee and I want to try all the drinks! (Would recommend the coffee cream soda, honestly very unique and eclectic and rich.)", 
user_id: u5.id, business_id: b4.id, rating: 5)
review63 = Review.create!(content: "Excellent coffee drinks served by super, super-nice baristas out of an immaculate space a few blocks away from Chinatown and the Financial District.", 
user_id: u6.id, business_id: b4.id, rating: 5)
review64 = Review.create!(content: "Drove all d way from peninsula to try this cute little coffee place. My flat white was exquisite, 5/5 for service, covid precautions, and obviously the quality. Super satisfied, worth d drive n I shall be back soon! Thanks Brian for making my experience so pleasant.", 
user_id: u7.id, business_id: b4.id, rating: 5)

#Brew Cha
review35 = Review.create!(content: "I was definitely caught by their super aesthetic drinks on Instagram. I got the ube taro latte and my coworker got the matcha latte. I LOVE LOVE ube and taro so I was super excited to try it out. The drink is super aesthetic/Instagram-worthy, makes a sort of tye-dye effect on the cup. You can definitely taste the ube and taro flavor, not artificial at all, and the drink is super creamy.", user_id: u8.id, business_id: b5.id, rating: 4)
review4 = Review.create!(content: "Ordered the Matcha Latte with Oat Milk and Taro Latte both with boba. First, I'd like to mention in the Taro Latte they put actual taro bits, which makes this bev extra special. Second, the Matcha Latte TASTES like actual matcha! Not that watered down stuff. Automatic five stars! Staff was super helpful on the phone (ordered via phone) and in person--happily serving their customers.

Will be coming back more often once everything goes back to normal. Again, thank you to the staff. Stay safe, stay healthy, and practice good hygiene everyone.", user_id: u4.id, business_id: b5.id, rating: 5)
review31 = Review.create!(content: "I ordered the earl grey milk tea with regular and crystal boba. Regular boba is free with any drink and is cooked to perfection unlike at Boba Guys. My hubby got the matcha latte and my kid got the passion fruit slushee. Would definitely order the earl grey mil tea and passion fruit slushee again. Both were flavorful and quite refreshing on a hot day. Matcha latte was just ok, nothing special.", user_id: u5.id, business_id: b5.id, rating: 4)
review32 = Review.create!(content: "I ordered the matcha latte with less ice, 50% sweetness, and oat milk. I'm always a big fan of any boba shop that has oat milk, cause it tastes exactly like milk and has the same creaminess, but is lactose free! I'm actually very impressed by the matcha flavor. It had a strong matcha flavor that wasn't overpowered by the milk and the perfect sweetness.", user_id: u6.id, business_id: b5.id, rating: 4)
review33 = Review.create!(content: "This place is simply incredible and deserves 5 stars. Walk inside and you'll immediately feel comfortable - this store has a great ambiance. The menu is easy to navigate, and the owners of the store are incredibly sweet. It is clear that they take pride in their work, and I always feel well taken care of.", user_id: u2.id, business_id: b5.id, rating: 5)
review34 = Review.create!(content: "Great addition to the Mission! Brew Cha offers your classic boba drinks, and also more unique drinks, such as their Ube Taro Latte (15oz/$5.50; Swapped black boba for white, yelp.com/user_local_phot…). It normally comes with black boba but I swapped it for their white, which was nice and chewy- very unique! The taro flavor in the latte was really good, but it was a little too creamy overall. However, it's definitely worth trying once. I hope to come back and try their other drinks! Parking in this area of the Mission can be tough, but street parking spots are available.", user_id: u3.id, business_id: b5.id, rating: 4)
review36 = Review.create!(content: "I ordered a Matcha milk tea with boba.  I'd say the boba is not bad but it's also not outstanding.  The drink certainly satisfied my boba craving, but after I finished my drink, I had that feeling of 'Oh, was that it?'

So, the boba may have been meh, but since it's called Brew Cha (cha is Chinese for tea), perhaps I'll go back to try the fruit teas instead!", user_id: u1.id, business_id: b5.id, rating: 4)
review37 = Review.create!(content: "I love milk tea , and it's first time I try brew cha,
It's really taste same as the milk tea in taiwan,
Now I have order from here at least once a week!
Thank you to bring the favor from Taiwan!!!!
Love it and enjoy it!
Keep the good work!", user_id: u7.id, business_id: b5.id, rating: 5)

#House of Prime rib
review5 = Review.create!(content: "A short while back I decided to have a baby. A meat baby. The procedure was simple: make a reservation, show up, get seated, start meating. Prime rib was the special, though there were seafood options as well. The sides, like creamed spinach and Yorkshire pudding, were all delicious. Medication (wine) was affordable and the manhattans overflowed. The staff were wonderful and the restaurant had classic charm.", user_id: u5.id, business_id: b6.id, rating: 5)
review38 = Review.create!(content: "Obviously great food, and once we were seated things were fine. Server was telling us that they were at 25% capacity and all the employees were wearing masks and seemed to be diligent.
", user_id: u1.id, business_id: b6.id, rating: 4)
review39 = Review.create!(content: "We were happy with our yummy dinner at the House of Prime Rib!! It was so much!! I gave my bag to go a homeless man outside. He was so happy!!", user_id: u3.id, business_id: b6.id, rating: 5)
review40 = Review.create!(content: "Not a complicated menu, basically Prime Rib with sides with varying slices and sizes. I didn't come all the way from Hawaii to not have the King Cut which was the largest serving and includes the bone. My server said hey..don't worry you can always take the left overs..hahaha...leftovers. Each meal comes with a salad prepared table side, yorkshire pudding, mashed/baked potato, and creamed spinach. Instead of the potato I was able to get a serving of their creamed corn which was excellent. Prime Rib was amazingly tender and delicious and I was able to finish of that piece with no problem, probably because I skipped the potato. For dessert, of course a second cut of meat! You can also get additional sides with your second cut but I just needed the meat which was the star!", user_id: u2.id, business_id: b6.id, rating: 5)
review41 = Review.create!(content: "We got a few drinks and ordered the King Henry cut medium rare to share. It's a $10 charge for sharing and I'm glad we did this because there's no way I could finish an entire piece by myself! We started off with warm bread with a side of butter and a large plate of salad. Our prime rib came out along with a side of creamed corn, Yorkshire pudding, mashed potatoes, and creamed spinach. The prime rib was just heavenly! It was soft and full of flavor. I was honestly very surprised and the sides were delicious. I wish I had a second stomach to eat more!", user_id: u4.id, business_id: b6.id, rating: 5)
review42 = Review.create!(content: "I was never really a prime rib person until I tried House of Prime Rib! Now let me warn you that if you want to come here for a special occasion, I recommend making a reservation months in advance because they get booked quick.", user_id: u6.id, business_id: b6.id, rating: 4)
review43 = Review.create!(content: "The menu is simple and that's perfect. Apart from prime rib, there was a fish option. I chose the thinly sliced cut which was perfect, though my husband's normal cut definitely had more flavor. Our meat cutter was a woman which is super cool because I read an article after our visit that she is their first female butcher- you go girl!", user_id: u7.id, business_id: b6.id, rating: 4)

#Hog Island Oyster Co
review44 = Review.create!(content: "The service is impeccable as it should be since they have to serve a high amount of tourists quickly and efficiently. As we got our order, our server asked what the occasion with me running around with my camera taking photos and as we explained to him what was happening he gave us a lesson of love and congratulated the newly engaged couple. That was really great and nice of him!", user_id: u1.id, business_id: b7.id, rating: 4)
review45 = Review.create!(content: "Highly Highly recommend !!! We were referred to this place by a couple friends! Pre - Covid we stopped by during the middle of the week , the wait was maybe 15 min ! Wasn't as busy, and the food was delicious ! The oysters that are cooked are delicious , my favorite was the clam chowder!!!! Best one is San Francisco hands down!", user_id: u8.id, business_id: b7.id, rating: 5)
review46 = Review.create!(content: "Definitely expect a wait if you come on the weekends, particularly around lunch! It can be a bit cold waiting outside so be prepared.
My favorite part about this place is the amazing bread rolls they serve. They are ready to give you lots, but save room for the oysters and other dishes!
I always get the Mixed Oyster plate to have a variety to try. I wanted to get the Pesto Mussel dish that I had last time, but this is not longer on the menu I found. I was able to split a bowl of Clam Chowder which was delicious and so beautiful! Splitting it was perfect, along with oysters and bread for two people.", user_id: u2.id, business_id: b7.id, rating: 4)
review47 = Review.create!(content: "Food is salty and overpriced. This restaurant is right next to the bay, which is nice, but the food for the price you pay isn't worth it. Clam chowder was super watery and their poke was salty. Not worth it. Note that a 4% fee will be added to your bill to cover employee benefits, and this excludes  tip.", user_id: u4.id, business_id: b7.id, rating: 3)
review48 = Review.create!(content: "The service was slow, but it was fine. Bay area prices as far as booze, but a good amount of options. The seafood was plentiful and surprisingly a good price. My group got oysters, the black cod, the clam pot and the rustic seafood soup. The clam pot was by far the best dish, with amazingly aromatic broth, homemade pasta and the most tender clams. The rustic seafood soup had a lot of good, fresh seafood, but it was half tomatoes and left me wanting something more.", user_id: u6.id, business_id: b7.id, rating: 4)
review49 = Review.create!(content: "The mouthwatering food keeps me coming back, but the service is also unbeatable here! The staff was SO attentive; we never had to ask for refills of water or bread. Also when I first sat down, our server warned me about keeping my bag behind me and recommended using the hooks underneath the bar. He was also just great conversation, in general.", user_id: u3.id, business_id: b7.id, rating: 4)
review50 = Review.create!(content: "I had friends in town and we stopped for lunch. I ordered chowder, oysters, and wine. SO DELICIOUS.", 
user_id: u7.id, business_id: b7.id, rating: 5)

#Black Sugar
review51 = Review.create!(content: "Black Sugar is amazing! I was really sad that Boba Guys had closed due to COVID so I was looking around for a good spot. Thanks fellow Yelpers for this recommendation. The fresh milk black sugar boba was so light and tasty. I also tried the mango matcha boba which was DELICIOUS. I highly recommend this spot", 
user_id: u3.id, business_id: b8.id, rating: 5)
review52 = Review.create!(content: "it's okaay, the black sugar milk tea was better than the pear green tea for sure. i ordered both at 75% sweetness, light ice, with boba.", 
user_id: u1.id, business_id: b8.id, rating: 3)
review53 = Review.create!(content: "The staff was knowledgeable on the menu and helped me pick a drink. Service was super fast and the boba was chewy with the perfect amount of black sugar. A must try if you're in town!", 
user_id: u5.id, business_id: b8.id, rating: 5)
review54 = Review.create!(content: "I've never had black sesame drinks before, and this was a great first time! I really enjoyed the nutty flavor that the sesame added to the drink. Pairs perfectly with almond milk.", 
user_id: u2.id, business_id: b8.id, rating: 4)
review55 = Review.create!(content: "I wanted to try their Strawberry Milk cause I'm pretty picky with Strawberry Milk Tea and I love it!!! I'd be happy to visit anytime I'm in downtown. I'd say this is an upgrade version of Strawberry MT from Tpumps (no shade to Tpumps cuz I like them too, this is just for comparison) since here uses Strawberry puree and Tpumps uses syrup flavoring. Pearls overall were ok but some were more firm than others", 
user_id: u8.id, business_id: b8.id, rating: 4)
review56 = Review.create!(content: "Holy crap! Excuse my language, but this place SUCKS. Their drinks are gross, and their service is abysmal.", 
user_id: u7.id, business_id: b8.id, rating: 1)
review57 = Review.create!(content: "Amazing and black sugar lives up to its name. It is the best boba I have ever had. We ordered from their Popular Section and got the Black Milk Tea. (Pictured). We also got the Taro Milk Tea and that was the best.", 
user_id: u6.id, business_id: b8.id, rating: 5)

#Tea Hut
review65 = Review.create!(content: "There were several people waiting the first time we visited and social distancing was a little tricky. They were very busy late in the afternoon so just be patient even if your drink isn't ready when you arrive. We opted for the two pineapple tea drinks which were amazing. We loved them so much we came back the next day. We also got the strawberry tea also the next day. Very durable, secured cups to drink from.", user_id: u5.id, business_id: b9.id, rating: 5)
review66 = Review.create!(content: "The taste of the thai tea was decent but not as flavorful as some other places. The boba texture was good, it was cooked well. However, I feel like they give too little toppings. I barely had any grass jelly and boba amount was a little less than other boba shops.", user_id: u3.id, business_id: b9.id, rating: 4)
review67 = Review.create!(content: "I went here to pick up drinks for my family. I got the Taro milk tea with boba, four seasons milk tea with boba, Mochi soy milk, and the golden milk tea. First off, don't put an option for milk choice if you cannot change the milk. I wanted to change my Taro milk tea with almond milk but they said it was already pre mixed which was dumb. Their taro milk tea isn't the best and not even in the top 5. The four seasons milk tea was roasted oolong which was pretty good. The Mochi soy milk was different and interesting and definitely looked pretty. My cousin hasn't tried the golden milk tea yet so I cannot put their review.", user_id: u1.id, business_id: b9.id, rating: 2)
review68 = Review.create!(content: "The Dragonfruit Cheese was amazing! Sweet fruity flavor but can still taste the tea. It's like a better quality version of Starbucks dragonfruit refresher.", user_id: u2.id, business_id: b9.id, rating: 5)
review69 = Review.create!(content: "This place is really great for their fruit teas/smoothies. You can definitely taste the fruit and tea distinctly which supports their claim of simple/natural ingredients. They are on the pricier side but I'm sure that is to offset the costs of using natural ingredients.
", user_id: u8.id, business_id: b9.id, rating: 4)
review70 = Review.create!(content: "Really yummy boba place in the Lower pacific heights area. The shop is really small and cute. They offer order online and pick up in store which is very covenient.",
    user_id: u4.id, business_id: b9.id, rating: 5)
review71 = Review.create!(content: "Not the best boba shop I've been too. I got the passion fruit pineapple tea, and they were heavy on the black tea. I've had passion fruit from Brazil, and if you're familiar with it, it can be very tart with no sugar. The pineapple flavor lacked in this drink which was disappointing.", user_id: u6.id, business_id: b9.id, rating: 2)