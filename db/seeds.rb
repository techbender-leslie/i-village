# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Conversation.destroy_all

Category.destroy_all
recommend_category = Category.where(cat_name: 'recommend').first_or_create(cat_name: 'recommend')
classified_category = Category.where(cat_name: 'classified').first_or_create(cat_name: 'classified')
announcement_category = Category.where(cat_name: 'announcement').first_or_create(cat_name: 'announcement')
safety_category = Category.where(cat_name: 'safety').first_or_create(cat_name: 'safety')
event_category = Category.where(cat_name: 'event').first_or_create(cat_name: 'event')
other_category = Category.where(cat_name: 'other').first_or_create(cat_name: 'other')


# Category.create!(cat_name: 'Recommend')
# Category.create!(cat_name: 'Classified')
# Category.create!(cat_name: 'Announcement')
# Category.create!(cat_name: 'Safety')
# Category.create!(cat_name: 'Event')
# Category.create!(cat_name: 'Other')


Comment.destroy_all

User.destroy_all

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

