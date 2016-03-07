# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.destroy_all
Category.create(cat_name: 'Recommend')
Category.create(cat_name: 'Classified')
Category.create(cat_name: 'Announcement')
Category.create(cat_name: 'Safety')
Category.create(cat_name: 'Event')
Category.create(cat_name: 'Other')

# recommend_category = Category.where(cat_name: 'recommend').first_or_create(cat_name: 'recommend')
# classified_category = Category.where(cat_name: 'classified').first_or_create(cat_name: 'classified')
# announcement_category = Category.where(cat_name: 'announcement').first_or_create(cat_name: 'announcement')
# safety_category = Category.where(cat_name: 'safety').first_or_create(cat_name: 'safety')
# event_category = Category.where(cat_name: 'event').first_or_create(cat_name: 'event')
# other_category = Category.where(cat_name: 'other').first_or_create(cat_name: 'other')

Conversation.destroy_all
# Conversation.create!(title: 'When life gives you lemons, make some curd! Looking for lemons...', 
#   content: 'Hi! We will be making another batch of our award-winning lemon curd next week and are in search of more lemons. If you or anyone that you know has excess we would love to have them. In exchange, we will happily share the finished product with you.',
#   picture: 'http://thetoughcookie.com/wp-content/uploads/2014/04/Lemon-Curd-1.jpg',
#   category_id: 5)

# Conversation.create!(title: 'For Sale: Big couch',
#   content: 'This huge sectional couch is for sale. Like new, we paid $900 a few months ago but have discovered it is too large for our apartment. Will sell for $700 firm, you pick up.',
#   picture: 'http://www.vivifurnitures.com/upload/photo/066a550108a059beeb0f5ac9519601e8.png',
#   category_id: 1)

# Conversation.create(title: 'Best Ethiopian food in the Bay Area',
#   content: 'I have just returned from my 100th meal at Enssaro Resturant on Grand in Oakland. In case you have never been, it is the best Ethiopian food in all of Oakland.',
#   picture: 'http://s3.amazonaws.com/citybuzz/2014/08/food-oakland/OaklandRestaurants1.jpg',
#   category_id: 0)

# Conversation.create(title: '2015 BWM X6',
#   content: 'Unrestrained styling, raucous power, and surprising agility define the X6—although its fastback design limits rear-seat room and cargo space. A 300-hp 3.0-liter turbo inline-six with an eight-speed automatic can be ordered with either rear- or all-wheel drive. An audacious 445-hp 4.4-liter turbo V-8 is optional and comes only with all-wheel drive. The standard Driving Dynamics Control system allows for five distinct driving modes and an available air suspension provides even more fine-tuning. Asking $64,000 OBO - email hipster@gmail.com. Currently being stored in climate controlled garage, but test drive can be arranged.',
#   picture: 'https://s-media-cache-ak0.pinimg.com/736x/fc/f3/d7/fcf3d740b0b1dc41ce01e66f71a6ad7c.jpg',
#   category_id: 1)

# Conversation.create(title: 'Welcome to iVillage',
#   content: 'Welcome to i-Village, the new community portal for you to share ideas, goods, notices, recommendations',
#   picture: 'http://cooltownstudios.com/wp-content/uploads/2013/10/Anton-at-Menlo_01_.jpg',
#   category_id: 2)

# Conversation.create(title: 'Looking for a ride to LA?',
#   content: 'HI! Is anyone looking to go to LA next weekend? We will be leaving on Saturday, around 8 am and are looking for someone to share gas and maybe driving. Contact Kira in apartment 510 or by email: kirakira@gmail.com',
#   category_id: 5)

# Conversation.create(title: 'Elevator problems (again)',
#   content: 'I just heard from the building maintenance director that the left elevator has been acting up. Some people were stuck inside earlier, so use at your risk. Repair team will be coming out on Tuesday.',
#   category_id: 3)

Comment.destroy_all
# Comment.create!(user_name: 'Stu', 
#   body: 'We might be interested. How many pieces does it break down into?',
#   conversation_id: 2)

# Comment.create(user_name: 'Stella', 
#   body: 'This is one of the most ugliest couches I have ever seen, I hope someone buys it!',
#   conversation_id: 2)

# Comment.create(user_name: 'Leslie',
#   body: 'This is a beautiful car. Will you accept monthly payments?',
#   conversation_id: 5)



User.destroy_all

User.create(name: 'Prince S. Gocartster', email: 'prince@gmail.com', password: 'password', password_confirmation: 'password', phone: '415-555-1212', apartment: '100', bio: "Lorem ipsum Nisi non aut quod. Ea sunt maxime aut. Et sunt minus numquam eum et non nam. Dolor at praesentium eum non. Excepturi nulla aut dolorem nobis et. Quas molestias laborum dolorum et commodi odio et.")

30.times do |n|
  name = Faker::Name.name
  email = Faker::Internet.free_email
  password = "password"
  password_confirmation = "password"
  phone = Faker::PhoneNumber.cell_phone
  apartment = Faker::Number.number(3)
  bio = Faker::Lorem.paragraphs
  User.create!( name: name, 
                email: email, 
                password: password, 
                password_confirmation: password_confirmation, 
                phone: phone, 
                apartment: apartment, 
                bio: bio)
end

