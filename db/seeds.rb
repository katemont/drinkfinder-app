# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
User.create(email: "kate.montgomery@drinkfinder.com", password: "password")
User.create(email: "chris@gmail.com", password: "password")
User.create(email: "adam@gmail.com", password: "password")
User.create(email: "tony@gmail.com", password: "password")
User.create(email: "peter@gmail.com", password: "password")

Recommendation.delete_all

Recommendation.create(review: "Only open til 9pm, but the wines, cheese and charcuterie here are all great value and delivered by charming people – fine wines by the glass and bottle")
Recommendation.create(review: "Gastropub heaven – have drinks downstairs and then dine finely upstairs or grab an unbookable table at the back downstairs with dramatic views of the kitchen")
Recommendation.create(review: "Gastropub heaven – have drinks downstairs and then dine finely upstairs or grab an unbookable table at the back downstairs with dramatic views of the kitchen")
Recommendation.create(review:"A wacky alternative to the grit and bare bricks of East London, the vibrant décor and always busy surroundings mean it's never just one drink. They also have an extensive and decent wine list, featuring English variants of all things")



