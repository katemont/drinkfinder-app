# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
User.create(email: "kate.montgomery@drinkfinder.com", password: "password", role: "admin", username: "Monty", name: "Kate Montgomery")
User.create(email: "chris@gmail.com", password: "password", role: "admin", username: "Chris", name: "Chris McMahon")
User.create(email: "adam@gmail.com", password: "password", role: "user", username: "Adam", name: "Adam Bass")
User.create(email: "tony@gmail.com", password: "password", role: "user", username: "Tony", name: "Tony Laverty")
User.create(email: "peter@gmail.com", password: "password",  role: "user",username: "Peter", name: "Peter Montgomery")

Recommendation.delete_all

Recommendation.create(review: "Only open til 9pm, but the wines, cheese and charcuterie here are all great value and delivered by charming people – fine wines by the glass and bottle", tag_list: "girolle cheese, oenomatic machines, wine")
Recommendation.create(review: "They keep it simple at this Harveys owned Victorian pub. Good beer, no music and a friendly crowd.", tag_list: "beer, ale, Harveys, cosy")
Recommendation.create(review: "Gastropub heaven – have drinks downstairs and then dine finely upstairs or grab an unbookable table at the back downstairs with dramatic views of the kitchen", tag_list: "originalgastropub")
Recommendation.create(review:"A wacky alternative to the grit and bare bricks of East London, the vibrant décor and always busy surroundings mean it's never just one drink. They also have an extensive and decent wine list, featuring English variants of all things", tag_list: "alternative, young, English")
Recommendation.create(review:"Oasis of uber-contemporary Zen in the heart of the hubbub, great cocktails although they come at a price", tag_list: "wrocktea")
Recommendation.create(review:"The latest member of the Anchor & Hope/ Canton Arms family, this helps continue the gentrification of the area by giving a solid, old-school pub to shelter from the winter cold, with a fabulous wine list and amazing food if you so wish. Worth going for the rabbit done on the charcoal grill alone", tag_list: "British, wine, foodie, classic")
Recommendation.create(review:"Outstanding beers from all over the world. Utterly and unapologetically tiny. Good for - beer connoisseurs. Bad for - massive parties.", tag_list: "beer, tiny")
Recommendation.create(review:"Not just a great drinking pub, the best pies in London. Actually, the best pies anywhere. Can get very busy at lunchtimes.", tag_list: "beer, pie, food")
Recommendation.create(review:"Much better than the Booking Office bar before your train leaves and a destination in itself, great drinks, friendly staff, strangely cosy yet towering", tag_list: "big bells smoked butter popcorn, cocktails, whisky")




