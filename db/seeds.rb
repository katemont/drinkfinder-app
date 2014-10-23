
User.delete_all
User.create(email: "kate@drinkfindr.com", password: "password", role: "admin", username: "Monty", name: "Kate")
User.create(email: "chris@drinkfindr.com", password: "password", role: "admin", username: "Chris", name: "Chris")
User.create(email: "adam@gmail.com", password: "password", role: "user", username: "Adam", name: "Adam")
User.create(email: "tony@gmail.com", password: "password", role: "user", username: "Tony", name: "Tony")
User.create(email: "peter@gmail.com", password: "password",  role: "user", username: "Peter", name: "Peter")
User.create(email: "geraint@gmail.com", password: "password",  role: "user", username: "Geraint", name: "Geraint")
User.create(email: "jo@gmail.com", password: "password",  role: "user", username: "Jo", name: "Jo")
User.create(email: "dave@gmail.com", password: "password",  role: "user", username: "Dave", name: "Dave")

Bar.delete_all
Bar.create(name:"The Gilbert Scott", location: "St Pancras Renaissance Hotel, Euston Road, London NW1 2AR")
Bar.create(name:"The Windmill", location: "6-8 Mill St, W1S 2AZ")
Bar.create(name:"Euston Tap", location: "190 Euston Rd, London NW1 2EF")
Bar.create(name:"New St Wine Shop", location: "6c, New St, London EC2M 4TR")
Bar.create(name:"Royal Oak", location: "44 Tabard St, Borough, London SE1 4JU")
Bar.create(name:"The Cow", location: "89 Westbourne Park Road, London W2 5QH")
Bar.create(name:"W Lounge", location: "W London, 10 Wardour Street, London W1D 6QF")
Bar.create(name:"Commercial Tavern", location: "Commercial Road")
Bar.create(name:"Camberwell Arms", location: "65 Camberwell Church Street, Camberwell, London SE5 8TR")
Bar.create(name:"Charles Lamb", location: "16 Elia St, London N1 8DE")
Bar.create(name:"ECC", location: "13a Gerrard St, Chinatown, London W1D 5PS, United Kingdom")
Bar.create(name:"The Brown Dog", location: "28 Cross St, London SW13 0AP")
Bar.create(name:"Aces and Eights Saloon Bar", location: "156-158 Fortress Road, London, NW5 2HP")
Bar.create(name:"Craft Beer Co Brixton", location: "11-13 Brixton Station Road, London, SW9 8PA")
Bar.create(name:"The Canton Arms", location: "177 South Lambeth Road, London, SW8 1XP")
Bar.create(name:"The Antelope", location: "76 Mitchum Rd, SW17 9NG")
Bar.create(name:"The Wheatsheaf", location: "2 Upper Tooting Rd, SW17 8PG")
Bar.create(name:"Fox & Anchor", location: "115 Charterhouse St, London EC1M 6AA")
Bar.create(name:"The Old Red Cow", location: "71-72 Long Ln, London EC1A 9EJ")
Bar.create(name:"The Crown and Two Chairmen", location: "31-32 Dean St, London W1D 3SB")
Bar.create(name:"Ye Olde Mitre", location: "Ely Court, Ely Place, London EC1N 6SJ")
Bar.create(name:"The Southampton Arms", location: "139 Highgate Rd, London NW5 1LE")
Bar.create(name:"Oskar's Bar at Dabbous", location: "39 Whitfield Street, London, W1T 2SF")
Bar.create(name:"King Charles I", location: "55-57 Northdown St, London N1 9BL")
Bar.create(name:"Bar Pepito", location: " 3 Varnishers Yard N1 9DF")
Bar.create(name:"The Guinea Grill", location: "30 Bruton Pl, London W1J 6NL")


Recommendation.delete_all
Recommendation.create(review: "Only open til 9pm, but the wines, cheese and charcuterie here are all great value and delivered by charming people – fine wines by the glass and bottle", tag_list: "girolle cheese, oenomatic machines, wine", bar_id: Bar.where(name: "New St Wine Shop").first.id, user_id: User.where(name: "Adam").first.id)
Recommendation.create(review: "They keep it simple at this Harveys owned Victorian pub. Good beer, no music and a friendly crowd.", tag_list: "beer, ale, Harveys, cosy", bar_id: Bar.where(name: "Royal Oak").first.id, user_id: User.where(name: "Peter").first.id)
Recommendation.create(review: "Gastropub heaven – have drinks downstairs and then dine finely upstairs or grab an unbookable table at the back downstairs with dramatic views of the kitchen", tag_list: "original gastropub", bar_id: Bar.where(name: "The Cow").first.id, user_id: User.where(name: "Adam").first.id)
Recommendation.create(review:"A wacky alternative to the grit and bare bricks of East London, the vibrant décor and always busy surroundings mean it's never just one drink. They also have an extensive and decent wine list", tag_list: "alternative, young, English wine", bar_id: Bar.where(name: "Commercial Tavern").first.id, user_id: User.where(name: "Tony").first.id)
Recommendation.create(review:"Oasis of uber-contemporary Zen in the heart of the hubbub, great cocktails although they come at a price", tag_list: "w rock tea, hotel", bar_id: Bar.where(name: "W Lounge").first.id, user_id: User.where(name: "Adam").first.id)
Recommendation.create(review:"A solid, old-school pub to shelter from the winter cold, with a fabulous wine list and amazing food if you so wish. Worth going for the rabbit done on the charcoal grill alone", tag_list: "British, wine, foodie, classic", bar_id: Bar.where(name: "Camberwell Arms").first.id, user_id: User.where(name: "Tony").first.id)
Recommendation.create(review:"Outstanding beers from all over the world. Utterly and unapologetically tiny. Good for - beer connoisseurs. Bad for - massive parties.", tag_list: "beer, tiny", bar_id: Bar.where(name: "Euston Tap").first.id, user_id: User.where(name: "Geraint").first.id)
Recommendation.create(review:"Not just a great drinking pub, the best pies in London. Actually, the best pies anywhere. Can get very busy at lunchtimes.", tag_list: "beer, pie, food", bar_id: Bar.where(name: "The Windmill").first.id, user_id: User.where(name: "Peter").first.id)
Recommendation.create(review:"Much better than the Booking Office bar before your train leaves and a destination in itself, great drinks, friendly staff, strangely cosy yet towering", tag_list: "big bells, smoked butter popcorn, cocktails, whisky", bar_id: Bar.where(name: "The Gilbert Scott").first.id, user_id: User.where(name: "Adam").first.id)
Recommendation.create(review:"Pretty pub off a side street near Angel. Well-kept Dark Star ales and a decent selection of wines. Good food and homemade bar snacks. Limited space inside so arrive early. Mixed clientele – locals, suits and trendies.", tag_list: "good food, beer, pub, maps", bar_id: Bar.where(name: "Charles Lamb").first.id, user_id: User.where(name: "Chris").first.id)
Recommendation.create(review:"Speakeasy style bar in the heart of Chinatown. Somewhat expensive cocktails but worth it. Great to stop in for pre or post dinner drinks. Not pretentious but has a sense of occasion.", tag_list: "cocktails, Chinatown, speakeasy", bar_id: Bar.where(name: "ECC").first.id, user_id: User.where(name: "Jo").first.id)
Recommendation.create(review:"A hidden gem. Our old local, this place has a welcoming, warm feel at any time of year. Tasty (if costly) food, a couple of cask ales, good wine, great staff. Oh, and copper lampshades.", tag_list: "cosy, cask ale", bar_id: Bar.where(name: "The Brown Dog").first.id, user_id: User.where(name: "Geraint").first.id)
Recommendation.create(review:"An awe-inspiring beer selection, stumbling distance from the Victoria line. A guaranteed Friday night blast (if you can find a seat). Yes, there is an upstairs.", tag_list: "craft beer", bar_id: Bar.where(name: "Craft Beer Co Brixton").first.id, user_id: User.where(name: "Geraint").first.id)
Recommendation.create(review:"Beer, whisky, pizza, rock music and a late licence. Job done.", tag_list: "pizza, rock music, late licence", bar_id: Bar.where(name: "Aces and Eights Saloon Bar").first.id, user_id: User.where(name: "Chris").first.id)
Recommendation.create(review:"Best pub near Stockwell, complete with great informal restaurant with amazing sharing options", tag_list: "Betty Stoggs, haggis toastie", bar_id: Bar.where(name: "The Canton Arms").first.id, user_id: User.where(name: "Adam").first.id)
Recommendation.create(review:"Very spacious and comfortable with a good selection of beers. Also very much the exception in being a pub where the excellent restaurant doesn't detract from the pub and vice versa.", tag_list: "beer, comfortable, Sunday roast", bar_id: Bar.where(name: "The Antelope").first.id, user_id: User.where(name: "Peter").first.id)
Recommendation.create(review:"Right next to Tooting Bec tube. Popular, comfortable pub with at least 7 different beers as well as genuinely good food.", tag_list: "beer, comfortable", bar_id: Bar.where(name: "The Wheatsheaf").first.id, user_id: User.where(name: "Peter").first.id)
Recommendation.create(review:"A pub to drink a day away in. Dark and cosy inside with various nooks and crannies at the back for a secluded pint. Great beer, wine and spirits selection and good food too. Short on toilets.", tag_list: "cosy, scotch eggs", bar_id: Bar.where(name: "Fox & Anchor").first.id, user_id: User.where(name: "Chris").first.id)
Recommendation.create(review:"A Mayfair pub filled suits and well-heeled locals during the day and marginally more diverse crowd in the evening. Good food, wine and a whiff of the 1980’s.", tag_list: "suits, 80s, Mayfair", bar_id: Bar.where(name: "The Guinea Grill").first.id, user_id: User.where(name: "Chris").first.id)
Recommendation.create(review:"This modestly-sized pub somehow manages to squeeze in more than a dozen beer taps across two bars. The beer's pretty good too, as is the food -- check out the scotch eggs!", tag_list: "beer, scotch eggs", bar_id: Bar.where(name: "The Old Red Cow").first.id, user_id: User.where(name: "Dave").first.id)
Recommendation.create(review:"Very popular Soho drinking establishment, people often miss the upstairs room which is by far the best bit of the pub - spacious, bright room right in the heart of Soho. Beer very good too.", tag_list: "private room, Soho", bar_id: Bar.where(name: "The Crown and Two Chairmen").first.id, user_id: User.where(name: "Peter").first.id)
Recommendation.create(review:"Old school…1546 to be precise. A fantastic drinking den, quiet and secluded, the perfect place for a pint in the afternoon. Good ales and the usual selection of draughts.", tag_list: "sausage rolls, 1546, toasties", bar_id: Bar.where(name: "Ye Olde Mitre").first.id, user_id: User.where(name: "Chris").first.id)
Recommendation.create(review:"A few years ago, CAMRA rated this the best pub in London. You can see why: combining a traditional boozer's atmosphere with a slightly hipster array of ales, it's a great place to spend a few hours.", tag_list: "hipster free zone, boozer, ale, CAMRA", bar_id: Bar.where(name: "The Southampton Arms").first.id, user_id: User.where(name: "Dave").first.id)
Recommendation.create(review:"The restaurant still has a six month waiting list but you can sample the food and the inventively named cocktails in the basement bar. Fizzy Rascal, anyone?", tag_list: "cocktails, michelin starred bar snacks", bar_id: Bar.where(name: "Oskar's Bar at Dabbous").first.id, user_id: User.where(name: "Kate").first.id)
Recommendation.create(review:"This very small pub, stuffed with odd ephemera, can be surprisingly hard to track down. But it's worth seeking out, if only to enjoy the bar billiards, sometimes attractive bar staff, or tiny toilets.", tag_list: "bar billiards, attractive staff", bar_id: Bar.where(name: "King Charles I").first.id, user_id: User.where(name: "Dave").first.id)
Recommendation.create(review:"Think sherry's for grannies? Think again. Sample a wide range from the tasting menu or settle for a plate of jamon and a copa of red. They also do good value wine-to-go", tag_list: "sherry, tapas, tiny, wine", bar_id: Bar.where(name: "Bar Pepito").first.id, user_id: User.where(name: "Kate").first.id)
