-- Password for this user is 'greatwall'
INSERT INTO users ("username", "email", "password", "salt", "role") VALUES
('user',
'fakeemail@yahoo.com',
'FjZDm+sndmsdEDwNtfr6NA==',
'kidcasB0te7i0jK0fmRIGHSm0mYhdLTaiGkEAiEvLp7dAEHWnuT8n/5bd2V/mqjstQ198iImm1xCmEFu+BHyOz1Mf7vm4LILcrr17y7Ws40Xyx4FOCt8jD03G+jEafpuVJnPiDmaZQXJEpEfekGOvhKGOCtBnT5uatjKEuVWuDA=',
'user');

-- YARDS --
INSERT INTO breweries (brewery_id, name, address, city, zipcode, neighborhood, contact, business_hours, description, brewery_img)
VALUES (1, 
'Yards Brewery', 
'500 Spring Garden St.', 
'Philadelphia', 
'19123', 
'Northern Liberties',
'info@yardsbrewing.com',
'Sun: 11am to 10pm. Mon-Fri: 11:30am to 11pm. Sat: 11am to 11pm.',
'Yards has been brewing Philly`s beer since 1994. We’ve grown from a garage-sized operation in Manayunk all the way up to our current location at 500 Spring Garden Street in Northern Liberties. And we couldn`t have done it without your support through the years. Our beers always have and always will be brewed, bottled, kegged, and canned for the hard working people of Philadelphia and beyond.', 
'https://imgur.com/mIfGksv');

-- PBC --
INSERT INTO breweries (brewery_id, name, address, city, zipcode, neighborhood, contact, business_hours, description, brewery_img)
VALUES (2,
'Philadelphia Brewing Co.',
'2440 Frankford Ave.',
'Philadelphia',
'19125',
'Fishtown',
'215-427-2739',
'Mon-Sun: 1pm to 8pm',
'Decades of brewing experience and an unwavering passion for the science of brewing are what define us best. We skillfully create our recipes by using only the best ingredients available. By adapting old world beer styles with modern brewing techniques, we have developed unique flavors that represent Philadelphia proudly. With more than a dozen different styles of ales and lagers brewed annually we have a beer for every discerning palate. In addition to operating the oldest and largest brewing facility in Philadelphia we are also fiercely independent. We brew fresh beer daily and deliver fresh beer daily directly to our loyal customers. We also believe that there is more than just great beer behind a successful brewery.  Its our companys values that put our community, environment and people right up there with the bottom line.  Come for a visit and see for yourself how our commitment and independence sets us apart from the rest.',
'https://imgur.com/EhsXVNF');

-- EVIL GENIUS --
INSERT INTO breweries (brewery_id, name, address, city, zipcode, neighborhood, contact, business_hours, description, brewery_img)
VALUES (3,
'Evil Genius Beer Co.',
'1727 Front St.',
'Philadelphia',
'19122',
'Fishtown',
'215-425-6820',
'Sun to Mon: 12pm to 8pm',
'Friends Luke Bowen and Trevor Hayward founded Evil Genius Beer Company in 2011. After meeting in College at Villanova, they bonded over their love of beer and wanted to do something more rewarding with their lives than getting a 9-5 job. Starting with only a few dollars in savings, the company now distributes all over the North East. Known for their humorous and witty branding, Evil Genius beers are easy to spot! Evil Genius opened their new Brewery and Beer Garden in Fishtown, Philadelphia in 2017, and are pleased to welcome Jon Defibaugh (Tired Hands, Earth Bread and Brewery) to their team as Head Brewer',
'https://imgur.com/C9rFcuP');

--Tired Hands Brewery--
INSERT INTO breweries (brewery_id, name, address, city, zipcode, neighborhood, contact, business_hours, description, brewery_img)
VALUES (4,
'Tired Hands Biergarten', 
'2213 Frankford Ave.',
'Philadelphia',
'19125',
'Fishtown',
'267-930-8645',
'Tues-Fri: 4pm - 12am, Sat-Sun: 12pm -1am',
'Philly based fans of Tired Hands Brewing Company won?t have to trek out to Ardmore to sip a wide selection of the cult favorite craft brewer?s beers any more: over the weekend, the Tired Hands Biergarten began pouring at 2213 Frankford Avenue.The 7,000-square foot seasonal outdoor space is kicking off with a hay bale-festooned High Harvest theme for fall. On tap will be 12 different drafts ? from their Fermentaria and Brewcafe in addition to oak-aged varieties stored in their Dispensary plus their sought-after Alien Church in cans, bottles of 333 Kombucha, and snacks.',
'https://imgur.com/yjas3QW');

--SEPARATIST BEER PROJECT--
INSERT INTO breweries (brewery_id, name, address, city, zipcode, neighborhood, contact, business_hours, description, brewery_img)
VALUES (5,
'Separatist Beer Project',
'1646 S 12th St.',
'Philadelphia',
'19148',
'267-534-4879',
'South Philly',
'Mon-Thurs: 4pm to 11pm. Fri: 4pm to 12am. Sat: 12pm to 12am. Sun: 12pm to 8pm',
'If you ask us what we are all about at Separatist Beer Project, the answer is simple: Hops, Lagerbier and Spontaneous Fermentation. From our classic, easy-drinking quintessential Cream Ale to our Wild Ale Blendery series we aim create the best beer possible.',
'https://imgur.com/CrCY4HD');

--LOVE CITY BREWING--
INSERT INTO breweries (brewery_id, name, address, city, zipcode, neighborhood, contact, business_hours, description, brewery_img)
VALUES (6,
'Love City Brewing',
'1023 Hamilton St.',
'Philadelphia',
'19123',
'215-398-1900',
'Callowhill',
'Mon-Fri: 4pm to 12am. Sat: 12pm to 12am. Sun: 12pm to 10pm.',
'We?ve found a home here in Philadelphia, a city that?s reclaiming its space on the national stage, but isn?t afraid to be itself. As we got to know Philly, we fell in love with its rich brewing history. We were amazed by the number of breweries that existed here (nearly 700 before Prohibition was enacted). Each neighborhood had a brewery that served the local residents, and beer was a part of every table. We want to make that a reality for our neighbors today. We think you should know your brewer and be able to watch your beer being made.WE THINK BEER SHOULD STILL BE AT THE CENTER OF EVERY TABLE.',
'https://imgur.com/UCA2laD');

--ORIGINAL XIII--
INSERT INTO breweries (brewery_id, name, address, city, zipcode, neighborhood, contact, business_hours, description, brewery_img)
VALUES (7,
'Original XIII Ciderworks',
'1526 N. American St',
'Philadelphia',
'19122',
'215-765-7000',
'Northern Liberties',
'Mon-Thurs: 4pm to 10pm. Fri: 4pm to 12am. Sat: 11am - 12am. Sun: 11am to 10pm.',
'Kowchak is an experienced businessman and brewer who received his MBA in Entrepreneurship from Drexel University. Additionally, he graduated from the Cider and Perry Academy in the UK. He plans for his brewery to be registered as a B-corporation, which means they?re pressing cider as environmentally friendly as possible. They?re doing this by distributing their product in cans as opposed to bottles, and have the vision of their new site being completely solar powered. They?re also keeping their produce local, are using apples from PA, and also have plans to create a cider using NJ blueberries.',
'https://imgur.com/9DOh39T');

--DOCK STREET--
INSERT INTO breweries (brewery_id, name, address, city, zipcode, neighborhood, contact, business_hours, description, brewery_img)
VALUES (8, 
'Dock Street South', 
'2118 Washington Avenue', 
'Philadelphia', 
'19126', 
'West Philadelphia',
'215-337-3103',
'Tues-F 4pm -11pm, Sat & Sun 12pm-12am',
'Come by Dock Street Brewpub for a great, laid-back spot to hang out with friends and family, enjoy hand-tossed, wood-fired pizza, fresh beer poured direct from the tanks, or a brewery tour. (Or all of the above.) Check back often for updates like new additions to the menu for game days, parties and holidays. Then, swing by Dock Street Cannery + Tasting Lounge, voted Philadelphia Magazine?s Best New Bar, located right next door to the main brewpub but with a separate entrance. There, you?ll find craft cocktails with house-made syrups and Pennsylvania spirits, and of course, Dock Street Beer. We`re also known to throw a mean party over there, featuring any and everything from comedy, prose reading, cheese-making, glass-blowing, mezcal tasting and live tattooing.',
'https://imgur.com/HQCmw0n');

--CRIME AND PUNISHMENT--
INSERT INTO breweries (brewery_id, name, address, city, zipcode, neighborhood, contact, business_hours, description, brewery_img)
VALUES (9,
'Crime and Punishment Brewing Co.',
'2711 W Girard Ave',
'Philadelphia',
'19130',
'Brewerytown',
'215-235-2739',
'Mon-Fri: 4pm to 12am. Sat: 11am to 1am. Sun: 11am to 12am.',
'From ales and lagers, to saisons and IPAs, there?s something on tap for everyone. C+P aims to blend the once-great local brewing tradition with newer craft techniques and international inspirations. They have designed a rotating menu of distinctive brews and Russian-influenced dishes done their way.',
'https://imgur.com/L4caNYA');

-- BREWERY ARS --
INSERT INTO breweries (brewery_id, name, address, city, zipcode, neighborhood, contact, business_hours, description, brewery_img)
VALUES (10,
'Brewery ARS',
'1927-29 W Passyunk Ave.',
'Philadelphia',
'19145',
'South Philadelphia',
'215-960-5173',
'Wed-Fri 4pm to 8pm Sat-Sun: 2pm to 7pm',
'Brewery ARS is a small garage brewery in South Philadelphia and the brainchild of Andy and Sean Arsenault, who began their brewing career as engineers with curiosity. After spending Friday evenings at the Foodery at 10th and Pine with a 6 pack of Yuengling and one craft beer from around the world each week, the brothers realized that they both were fond of the Belgian styles and grew an affinity for yeast-forward beers. After years of planning and tinkering recipes, the brewery officially opened its doors on December 17, 2016. Since then, the duo have brewed over 70 different batches of 56 different beers, including collaborations with Highway Manor Brewing and Kurant Ciders, exploring the endless flavor profiles craft beer has to offer.',
'https://imgur.com/Eo9C2F5');

-- YARDS BREWERY --
INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (1, 
1, 
'Philthy', 
'IPA', 
6.5,
'People in Philly don’t have a filter, and neither does our Philthy Hazy IPA. This bold, aromatic ale is loaded with tropical and citrus hops character and has that classic hazy, golden color. And just like the city where it’s brewed, this unapologetic IPA is left unfiltered.',
'https://imgur.com/OjGdv5d');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (2, 
1, 
'Loyal Lager', 
'Lager', 
5.0,
'25 years after opening our first garage brewery in Manayunk, we’ve built our dream brewery in the heart of the city – all thanks to our fans who have been loyal since the beginning. As a sign of our gratitude, we’ve used our new world-class brewing system to create Loyal Lager: a crisp, easy-drinking American Craft Lager brewed with two-row malt and aromatic Loral hops. It’s what a clean, high-quality lager is meant to be.',
'https://imgur.com/i0GyN0b');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (3, 
1, 
'Philadelphia Pale Ale', 
'Pale Ale', 
4.6, 
'Not to be boastful, but we believe that all other ales pale in comparison to this Philadelphia favorite. Dry-hopped with an abundance of distinctive Simcoe hops, this straw-colored pale ale is more drinkable than bitter, more aromatic than aggressive. Now in cans, it’s great for poolside. And look for the new 19.2oz cans at the ballpark.',
'https://imgur.com/1rXIv6T');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (4, 
1, 
'Brawler', 
'English Mild Ale', 
4.2, 
'Crafted in the style of an English mild, this malt-forward ale is great when you want to go a few rounds, its smooth character, hints of caramel and toast and remarkable drinkability define this ruby-colored brew as a knockout session ale.',
'https://imgur.com/Hzz8FFC');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (5, 
1, 
'IPA', 
'American IPA', 
7.0, 
'Our Signature IPA is loaded through and through with assertive American hops. Traditional floor-malted English barley gives IPA its firm malt character while generous amounts of Chinook and Amarillo hops impart aromas of pine and tangerine for a perfectly balanced IPA.',
'https://imgur.com/3LLdenw');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (6, 
1, 
'Love Stout', 
'Dry Stout', 
5.5, 
'Our brewers have poured their hearts and roasted malts into this rich, well-rounded stout. Luscious notes of coffee and chocolate accent Love Stout`s smooth, creamy mouth feel. We will not apologize for any amorous affairs resulting from the consumption of this beverage!',
'https://imgur.com/YWNdddk');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (7, 
1, 
'Pynk', 
'Tart Fruit Beer', 
5.5, 
'The people have spoken. We are pleased to announce that PYNK is now available all year-round! Each sip of PYNK starts with a crisp, fruity zing and finishes refreshingly dry. The delightful pink hue comes from heaps of fresh raspberries and cherries in every batch. It’s no wonder PYNK is called the rosé of beer. So let’s raise our bottles and pints to the good things in life — like family, friends, and beer — that bring us all together.',
'https://imgur.com/YWNdddk');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (8, 
1, 
'ESA', 
'Extra Special Ale', 
6.0, 
'Our first-ever and most-beloved brew, ESA helped establish a following for cask-conditioned beer in the United States back in the ‘90s. East Kent Golding hops give this British-inspired ale a subtle spiciness, which complements the strong malt backbone. ESA is floral, earthy and smooth with hints of chocolate and caramel, rounding out this deep chestnut-colored ale.',
'https://imgur.com/YWNdddk');

-- PBC BEERS --
INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (9,
2,
'Harvest from the Hood',
'Wet Hopped Ale',
7.0,
'Every autumn we release this fresh-hopped beer brewed with hops grown by Philadelphia Brewing Co.? right in our brewery courtyard, along with more hops grown by friends around Philadelphia like Greensgrow Farms. Harvest from the Hood is brewed on the same day that the locally grown hops are hand picked ? giving this brew a juicy, bright hop flavor and aroma.',
'https://imgur.com/laYzgAm');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (10,
2,
'Newbold IPA',
'IPA',
7.0,
'Newbold delivers an intensity of flavors. Loaded with a variety of hops, this beer exhibits the citrusy flavors and aromas that India Pale lovers crave.',
'https://imgur.com/VUzfJK8'
);

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (11,
2,
'Joe Coffee Porter',
'Coffee Porter',
5.5,
'Joe is not your average beer! This ale is brewed with locally-roasted, organic, coffee from Passero?s Coffee Roasters. Dark Munich and chocolate malts combine to create a well-balanced, flavorful porter with a fresh roasted coffee aroma. Savor ?til the last drop!',
'https://imgur.com/iRl7iO5');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (12,
2,
'Rowhouse Red',
'Philadelphia Style Ale',
5.7,
'We meld American and European ingredients into Rowhouse Red; a complex ale with flavors of rye, toasted malt, and Belgian ale yeast. Relax and enjoy the subtle intricacies of this unique brew wherever your heart calls home.',
'https://imgur.com/NVyxGnp');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (13,
2,
'Kenzinger',
'Golden Ale',
4.5,
'This crisp, light-bodied, golden beer is the very definition of refreshment. The combination of premium German pilsner malts and American Noble hops aims to please your taste buds and satisfy your thirst.',
'https://imgur.com/vQRWeoH');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (14,
2,
'Walt Wit',
'Belgian-Style White Ale',
4.5,
'The American poet, Walt Whitman, once portrayed a sunset over Philadelphia as ??a broad tumble of clouds, with much golden haze and profusion of beaming shaft and dazzle?. Pour yourself a bottle of Walt Wit Belgian-Style White Ale and see what he was talking about. A pinch of spice and a whisper of citrus lend complexity to this fragrant and satisfying ale.',
'https://imgur.com/kAfZAoF');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (15,
2,
'Working Cat',
'Pale Ale',
5.0,
'Working Cat is an ode to Duke, our very own working brewery cat. It is a double dry hopped pale ale brewed with Amarillo and Falconer?s Flight hops, as well as grapefruit and orange peels, which gives the 5% session-able beer balanced citrus notes with minimal bitterness. This newly-released limited seasonal brew is smooth, citrusy and light bodied, and is packed full of aroma.',
'https://imgur.com/YxHkxdD');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (16,
2,
'Yous Gotta Gose',
'Gose',
4.5,
'A pineapple, blueberry Gose.',
'https://imgur.com/nvi0ngE');

--EVIL GENIUS BEERS--
INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (17,
3,
'There`s No Crying in Baseball',
'Mango IPA',
6.0,
'Brewed with a delicate balance of malted barley and wheat, hopped with three of the juiciest hops we can find, then infused with all-natural mango. The wheat provides a balanced, smooth mouthfeel, while the exotic North American & Australian hops add a distinct, unmistakable fruity darkness. Finally, we top it all off with all-natural mango, resulting in a fruit IPA that is endlessly drinkable.',
'https://imgur.com/GhEGTYv');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (18,
3,
'Purple Monkey Dishwasher',
'Chocolate Peanut Butter Porter',
6.7,
'Purple Monkey Dishwasher is our robust porter made with Chocolate and Peanut Butter. We start with a world-class American-style porter recipe, which is already laden with notes of chocolate, sweet malts, caramel, and molasses, and then take it to the NEXT LEVEL by infusing it with natural chocolate and peanut butter! The final product is like a candy bar in a bottle that is deceptively quaffable despite it?s strength. Just take one sip and you?ll understand why this is our signature, year round porter.',
'https://imgur.com/kyoxCLm');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (19,
3,
'Stacy`s Mom',
'Citra Pale Ale',
7.5,
'Stacy?s Mom is our American IPA dry-hopped exclusively with Citra hops. Soft on the palate with extremely low bitterness, this is a great example of a new-school American IPA. Citra hops provide an explosive aroma of tropical fruits, lemon peel, peach and mango, complimented by a clean and slightly toasty malt base. Think you don?t like IPAs? Give Stacy?s Mom a try!',
'https://imgur.com/LQBYLbR');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (20,
3,
'#Adulting',
'Guava IPA',
6.8,
'#adulting is our Guava-infused IPA! Pale and crystal malts marry perfectly with Citra & Cascade hops, creating an easy drinking, creamy, medium-bodied, clean, smooth IPA. It is then infused with all-natural guava, turning this already delicious IPA into something truly unique. Big, bold hop notes of tropical fruit, watermelon, and lemon, balanced perfectly by a slightly sweet malt backbone and juicy, refreshing guava.',
'https://imgur.com/5A3MtbN');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (21,
3,
'I`ll Have What She`s Having',
'Chocolate Hazelnut Imperial Stout',
9.4,
'I?ll Have What She?s Having is our Imperial Stout made with chocolate and hazelnut. This limited release strong dark beer is something only Evil Genius could come up with ? a rich, creamy, over-the-top stout with layered flavors of roasted barley, molasses, chocolate, caramel, and hazelnut. Not too heavy on the palate, and with a surprisingly dry finish, this sturdy yet drinkable stout is perfect for the winter months.',
'https://imgur.com/7HJEz51');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (22,
3,
'Santa! I Know Him!',
'Festive Saison',
7.2,
'Santa!! I Know him! is our holiday saison brewed with rose hips, chamomile, black currants and dark Belgian candi syrup. Deep, complex and intriguing, this bone-dry Belgian-style ale is sure to seduce you, or the one you?re with. Roses, chamomile, and currants have long been considered powerful aphrodisiacs, so we decided to combine them with mysterious and beguiling Belgian saison yeast. The result is something very special and sure to help spice up nights spent at home during the cold winter months. Have you been Naughty or Nice this year ? or both?',
'https://imgur.com/OIiyw5R');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (23,
3,
'#ICANTEVEN',
'Watermelon Blonde Ale',
5.6,
'Brewed with equal parts 2-row barley and malted winter wheat, hopped ever-so-gently with Warrior, and infused with all-natural watermelon, #ICANTEVEN is the most refreshing and crushable ale in our line-up. Designed to satisfy all beer drinkers, this fruit-infused wheat ale will have you saying ?I can?t even..? Perfect for drinking outside!',
'https://imgur.com/sBqzw9U');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (24,
3,
'New Phone, Who Dis?',
'Caramel Macchiato Porter',
6.0,
'Your favorite espresso beverage has now become your favorite adult beverage! Brewed with American barley, caramel and chocolate malt, and a touch of dark wheat. Gently hopped with American and German hops, and then infused with caramel and locally roasted La Colombe coffee. Full-bodied, smooth and robust, with notes of sweet caramel, mocha, and chocolate.',
'https://imgur.com/WgP2SwD');

--Tired Hands Beers--	
INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (25,
4,
'Alien Church',
'IPA', 
6.5,
'Our otherworldly Reptoid with flavor photosynthesizing tongue Oat IPA. 7.0% Brewed with the fluffiest of oats and hopped AND dry hopped very aggressively with a blend of our favorite American varietals. This is absolutely THE one. Very alive & pungent & bright. Notes of mandarin orange, floral lychee, peach push pop, and musky guava.',
'https://imgur.com/gGqQrx4');


INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (26,
4, 
'Helles Other People', 
'Lager',
 4.8,
 'Brewed with 100% German Pilsner malt and hopped lightly with Hallertau Mittelfr?h. Fermented with our house lager yeast and cold conditioned for five weeks before its release. Refined and eminently crushable.
Notes of white grape, hay, clover honey, white peach, and fresh cut grass.',
'https://imgur.com/xUBvW60');


INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (27,
4, 
'Austere Modular',
 'Lager', 
 4.6, 
 'Built with a simple grist of German Pilsner malt, and hopped throughout the boil with German Perle, Mittelfr?h, and Spalter Select from our annual trip to Bavaria. Fermented with our house Lager yeast, and cold conditioned for four weeks before packaging. Perhaps our most refined batch to date? Not sure... who remembers Batch #1? =) Austere notes of black peppercorn, lemon pith, 
fresh dough, loose leaf green tea, Suze spritz, and white grape.',
'https://imgur.com/9IeNKAD');


INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (28,
4,
'Little Log Cabin',
'Simcoe Oat Double', 
9.0, 
'We brewed this one with an absolutely massive amount of wholesome oats and poured in the perfect amount of luscious lactose sugar to round out the comfortable body. Sunny Day was then Double Dry Hopped with mostly Australian Galaxy and a touch of hand selected US Simcoe and Mosaic.',
'https://imgur.com/lK2CcVH');


INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (29,
 4, 
'HopHands', 
'Pale Ale',
 5.5,
 'Brewed with oats. Hopped intensely with Simcoe, Centennial, and Amarillo. Hazy, juicy, and imminently crushable. Our precious Pale Ale. -Notes of tangelo, kiwi, dank, pine sap, nectarine',
'https://imgur.com/6WCjP7r');


INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (30,
 4, 
'Ourison', 
'Saison',
 4.8, 
'Ourison is Our Saison, SaisonHands, left to condition in oak and then allowed to fully express itself via a lengthy keg conditioning period. The end result is a highly refined snappy and pungent Saison that, I feel, is one of
the most simplistic and exciting iterations of Saison that we have ever produced.-Notes of lemon zest, pear, barnyard, hay, guava, juicy fruit, and earth.',
'https://imgur.com/0HFYnQr');


INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)

VALUES (31,
4, 
'Trendler Schwarzbier',
'Black Lagerbier', 
5.5, 
'Brewed with Pilsner malt, as well as a tasteful flurry of German specialty and dark malts.Hopped assertively with German Hersbrucker from our buddies in Bavaria, fermented with our house Lager yeast, and cold conditioned for four weeks. Extremely stark, restrained, and elegant, yet eminently crushable.-Notes of baker?s chocolate, pumpernickel toast, mild peat, and burnt sugar.',
'https://imgur.com/ykZkCGS');


INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)

VALUES (32,
4,
'Banana Split Double Milkshake IPA',
'Milkshake IPA:',
 9.0, 
 'An unabashedly desserty riff on our hilarious Culinary IPA series, originally conceived with our sincerely magical associates over at Omnipollo. Brewed with a veritable mountain of luscious oats and
 wheat, and a bit of lactose sugar. Conditioned atop a hefty helping of cacao, whole Madagascar vanilla beans and ripe banana puree, then mercilessly dry-hopped with the very choicest Mosaic and Citra. This one really gets at the
heart of this series.-Notes of banana taffy, strawberry shortcake, vanilla candies, chocolate, and banana.',
'https://imgur.com/90UmVJA');


INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (33,
4, 
'We Are All Infinite Energy Vibrating At The Same Frequency', 
'Wheat IPA', 
6.5, 
'OG BrewCafe classic triumphantly returns! Brewed with malted wheat and hopped intensely with Centennial and our then, now, and forever favorite Simcoe.
 Vibrant & drippy & juicy! Notes of tangerine, mango nectar, bubblegum, spruce tips, and candied pineapple.',
'https://imgur.com/RruKGyi');

--SEPARATIST BEERS--

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (34,
5,
'Classic Cream Ale',
'Cream Ale',
5.0,
'Our quintessential American Cream Ale made for drinking any time, and day. Comprised of Bohemian Pilsner malt and flaked maize, hopped gently with Hallertauer, then fermented low and slow for 3 weeks with a very cool ale strain, this beer is as crisp and easy drinking as they come.',
'https://imgur.com/ZxD3Zte');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (35,
5,
'PineApple Smoosh',
'Smoothie Pineapple IPA',
8.0,
'This Smoothie India Pale Ale was double dry-hopped with Mosaic and Centennial hops and then loaded up with tons of Pineapple and a bit of lactose for a sweet, tropical and fruity finish.',
'https://imgur.com/X4me5De');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (36,
5,
'Good Good',
'Double IPA',
8.0,
'A hazed-out, new school, fan favorite DIPA, double dry-hopped with a blend of Simcoe, Citra and Centennial hops. This beer boasts a pillowy mouthfeel with soft lingering bitterness. Its big fruity punches are balanced by pangs of spruce sap, pine and notes of resin',
'https://imgur.com/lWeJbJz');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (37,
5,
'Sketches of Cascade',
'Wild Pale Ale',
5.8,
'Sketches of Cascade is our second dissertation on the effects of dry-hopping a mature stock of wild ale fermented entirely in oak casks with a heavy hand of whole flower Cascade hops. Steeped low and slow, the result is bright and citrus-y with punches of grapefruit perfectly balanced by the herbaceous notes of the hops.',
'https://imgur.com/ilMUInU');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (38,
5,
'Jung Love',
'German Style Kellerbier',
5.0,
'Our young and unfiltered German-Style Kellerbier. Hopped with beautiful Hallertauer hops and cold conditioned for several weeks on a special German yeast strain. Jung Love is everything you could want in a lagerbier, with its clean and crisp flavor high quaffability.',
'https://imgur.com/0eRxCFW');

--LOVE CITY BEERS--
INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (39,
6,
'Love City Lager',
'American Lager',
4.0,
'Lightly malty with a hint of orange aromatics give every bright sip a clean landing. The perfect gateway for macro drinkers looking to step-up and taste a craft version of a super-crisp style.',
'https://imgur.com/EM49UiP');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (40,
6,
'Unity IPA',
'American IPA',
5.5,
'Assertive, yet highly drinkable American IPA. Double dry-hopped with Mosaic, Citra and Simcoe for a robust citrusy hop character. Light malt backbone, hoppy finish, low bitterness.',
'https://imgur.com/DDUQ03A');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (41,
6,
'Sylvie Stout',
'Oatmeal Stout',
5.0,
'Full-bodied English-style oatmeal stout with rich dark chocolate and espresso character with a very light citrus hop character and round, smooth finish.',
'https://imgur.com/BcDo1PI');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (42,
6,
'Earaserhood Hazy IPA',
'New England Style IPA',
7.2,
'Our signature hazy IPA! Triple dry-hopped with Mosaic, Citra and Centennial for a huge mango hop character with a smooth, round body. Moderate malt backbone and juicy finish.',
'https://imgur.com/ZZuAeuZ');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (43,
6,
'Tart Beats Plum',
'Sour',
5.8,
'The second in our tart series! Kettle-soured with lactic bacteria, with plum juice added to fermentation. Refreshingly tart with a light sweetness & balanced plum flavor.',
'https://imgur.com/EJbTEys');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (44,
6,
'Totally Wired',
'Coffee Brown Ale',
4.7,
'English-style brown ale. Aged on Lunar Lander espresso from our neighbors at Elixr coffee roasters',
'https://imgur.com/cis2uNW');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (45,
6,
'Deep Cut',
'Pilsner',
5.0,
'Dry, lightly bready, with sweet herb & spice hop character.',
'https://imgur.com/AQXVesw');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (46,
6,
'Generator Wheat',
'Wheate Ale',
4.2,
'Wheat beer featuring spices that pay homage to our North Chinatown neighborhood. Generous lemongrass and orange aroma counterbalanced by coriander.',
'https://imgur.com/WulkQ5e');

--ORIGINAL XIII Ciders--
INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (47,
7,
'Sir Charles Original Hard Cider',
'Semi-Dry Cider',
6.5,
'Semi-dry hard apple cider made with local, Pennsylvania apples.',
'https://imgur.com/A8G0V83');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (48,
7,
'Sir Charles Deep Blueberry Sea',
'Fruit Cider',
6.5,
'Semi-dry cider flavored with Blueberry.',
'https://imgur.com/pOH99nr');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (49,
7,
'Sir Charles Strawberry Valkyrie',
'Fruit Cider',
6.4,
'Semi-dry hard cider flavored with Strawberry.',
'https://imgur.com/LVrAnTR');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (50,
7,
'Atacama Bone Dry',
'English Dry',
7.0,
'Bone dry hard apple cider, with no added sugar.',
'https://imgur.com/lVnMsiq');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (51,
7,
'Atacama Hopped Dry',
'Hopped Dry',
7.0,
'Hopped dry hard apple cider, with no added sugar.',
'https://imgur.com/ChPRNyZ');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (52,
7,
'Sir Charles Ol? Scrumpy',
'American Scrumpy',
11.0,
'Sir Charles? original recipe. Made from 16 heirloom apples from my Grandfather?s orchard, aged with raisins and brown sugar.',
'https://imgur.com/WdHsQnq');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (53,
7,
'Sir Charles Irish Scrumpy',
'American Scrumpy',
15.0,
'Our original Sir Charles Scrumpy aged in a New Liberty Distilling Bourbon barrel. XAvailable only on Saint Patrick?s Day',
'https://imgur.com/avX12pU');

--Dock Street BEERS--
INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (54, 
8, 
'Dock Street King Juice', 
'Double IPA', 
8.5,
'Double IPA - We are making it reign with this hazy, sticky, double dry hopped, silky smooth, and perfectly balanced DIPA brewed with oats and wheat and chock full of Mosaic, Citra, and Centennial. Strong flavors and aromas of dried apricots, nectarine, and stone fruit. There are lots of big, juicy DIPAs but there can only be one King Juice.',
'https://imgur.com/24BaSyD');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (55, 
8, 
'IMPERIAL RED ALE', 
'Ale', 
10.0,
'A style hallmarked by strong bitterness, high alcohol, a rich caramel body, and aggressive hop flavor and aroma - this beer has it all. Hopped frequently and heavily from First Wort to Dry Hop with Comet, Chinook, Centennial, and Citra. The hops are balanced by a strong caramel backbone and sweet boozy finish.',
'https://imgur.com/0oD20An');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (56, 
8, 
'Prince Myshkins Russian Imperial Stout', 
'Stout', 
4.6, 
'Pours a deep, opaque, midnight-black, with a dense milk chocolate colored head. Brewed with a large percentage of roasted and chocolate malts for depth and complexity. Flavors are reminiscent of dark fruits, chocolate, and sandalwood, making Prince Myshkin perfect for dessert or a dangerously smooth nightcap. But who is Prince Myshkin, you may be wondering? He is the Idiot-Sauvant from Dostoyevskys novel, The Idiot, who the Russian writer described as entirely positive... with an absolutely beautiful nature.',
'https://imgur.com/2FtSFwa');


INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (57, 
8, 
'MAN FULL OF TROUBLEABV', 
'London Style Porter', 
5.2, 
'2020 WINNER - FIRST PLACE, PENNSYLVANIA FARM SHOW AWARDS. This London Style Porter was brewed with ?Old-World? in mind. Black and chocolate malts create its deep mahogany appearance and creamy espresso-like flavor. A blend of English East Kent Goldings and Fuggles hops lends a delicate earthy presence.',
'https://imgur.com/fAAcs0x');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (58, 
8, 
'Amber Beer', 
'Amber Ale', 
5.0, 
'The flagship Dock Street recipe from the 1980s, made right here in West Philly. Brewed with American Cascade hops and 2-row pale and caramel malts. It is medium-bodied, exceptionally balanced and always admired for its clean smooth finish.',
'https://imgur.com/cjAAHzu');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (59, 
8, 
'GOLDEN IPA', 
'IPA', 
6.0, 
'American IPA - We designed this golden-hued, clear IPA so that hop flavor and aroma are the primary experience. Oats and a touch of caramel malt make for a mouth coating light body balanced with medium bitterness. Mosaic, Citra, Simcoe, and Amarillo hops create flavors and aromas of tropical fruit, citrus, and just a hint of pine. Can art, featuring a gold doubloon and our trademark anchor, by Philly-based artist Eric Hinkley.',
'https://imgur.com/YR35TUC');


INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (60, 
8, 
'BEAN2BEAN ESPRESSO STOUT', 
'Stout', 
6.0, 
'Intense aromas of espresso and dark chocolate precede this rich, elegant stout. Medium-bodied with a pleasant sweetness. Conditioned atop pounds and pounds of coffee beans from Bean2Bean.',
'https://imgur.com/c2Kmsmn');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (61, 
8, 
'RYE IPA',
'India Pale Ale',
6.8,
'An aggressively hopped American Style India Pale Ale brewed with Columbus, Simcoe and Amarillo hops. The use of 20% rye gives this ale it`s trademark dry and spicy character. It`s been voted among the Top 15 Rye Beers in the World on Beer Advocate.',
'https://imgur.com/869WdaL');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (62,
8,
'BOTTLE CONDITIONED WILD KING',
'Double IPA',
8.9,
'2020 WINNER - SECOND PLACE, PENNSYLVANIA FARM SHOW AWARDS. For 19 months we aged the base for one of our house Double IPAs, King Juice, in stainless steel with a house-cultured blend of Brettanomyces until the beer was transformed into something entirely different. We then dry hopped heavily with Mosaic, Amarillo, and Ekuanot to compliment the aromas and flavors contributed by the Brett. The resulting beer is an indulgent wild ale, not overly tart but significantly funky with bold aromas of a strawberry-mango-pineapple smoothie and flavors of capri-sun summers and overripe fruit funkiness.',
'https://imgur.com/S0PwH0D');

--CRIME AND PUNISHMENT Beers--
INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (63,
9,
'Space Race IPA',
'IPA',
7.0,
'In the world of IPA?s the sky?s the limit.  Hop on board our house IPA full of Citra, Mosaic, and Simcoe.  Scents of peach, papaya, and wheat grass commingle with flavors of tangelo, melon, and grapefruit rind, ultimately leading to a clean, dry finish. Join us on the IPA journey ahead!',
'https://imgur.com/QN5T6Tw');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (64,
9,
'Ghost Station',
'Raspberry Berliner Weisse',
4.5,
'Brewed with wheat, kettle soured, and refermented with 200lbs of raspberry puree for an incredibly bright, lovely, and refreshing beverage experience.',
'https://imgur.com/Z3ZyvL7');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (65,
9,
'Pretend Winter Happened Stout',
'Imperial Stout with Chocolate, Vanilla and Tangerine Peel',
12.6,
'Close your eyes, take a sip,  and transport yourself to a snow laden urban landscape.  10% of sales will be donated to the good folks at PennEnvironment.',
'https://imgur.com/rnIPhKY');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (66,
9,
'Vandal Vacation',
'IPA',
6.7,
'Take a break from all that thievery and enjoy some Galaxy, Mosaic, Citra, and Sultana all in a nice tropical package. Notes of ripe summer melon,  suntan peppers on the kabob, some friendly strangers fruit punch, and a little bit of that puff puff stuff stuff.',
'https://imgur.com/jXiXFXw');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (67,
9,
'Optimistic Optometrist',
'Gose',
4.5,
'Brewed with wheat and oats, coriander and sea salt in the boil, and dry hopped with Citra and Sultana. Notes of pineapple margarita, fruit loop lemonade, and eucalyptus bath bombs.  Put on those happy glasses and brighten up your day just a little bit more!',
'https://imgur.com/Nk5PbDR');

--ARS BEERS--
INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (68, 
10, 
'Good Grape IPA', 
'IPA', 
7.5,
'Hazy IPA brewed with gewurztraminer grapes and hopped with mosaic & triumph | 7.5% ABV Tasting Notes: Ripe lychee, passion fruit & peaches',
'https://imgur.com/FfJCCOC');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (69, 
10, 
'Showy Spikes Saison', 
'Saison', 
5.5,
'Saison spiced with lemon verbena and hopped with citra | 5.5% ABV Tasting notes: Bright & vibrant floral lemon character with a hint of lime.',
'https://imgur.com/uMgQRBj');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (70, 
10, 
'Speculoos Stout', 
'Stout', 
5.8, 
'Stout with speculoos cookies, spices (cinnamon, ginger, cloves, cardamom & nutmeg) and a touch of lactose. Tasting notes: The almighty speculoos cookie in liquid form.',
'https://imgur.com/ebaYBFN');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (71, 
10, 
'FUMUS Smoked Black Ale', 
'Black Ale', 
6.2, 
'Maple wood smoked black ale with wildflower honey | 6.2% ABV Tasting notes: smoked cherries drenched in darkness. Available in growler.',
'https://imgur.com/xl2kJOb');


INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (72, 
10, 
'Antiquen Pale Ale', 
'Pale Ale', 
6.0, 
'New England style Pale Ale with simcoe & el dorado hops. Pungent citrus, intense stone fruit, fresh pears.',
'https://imgur.com/R4hw7De');


INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (73, 
10, 
'Zwillinger', 
'German style pilsner', 
5.5, 
'Unfiltered German style pilsner with tettnang, spalt select & saaz hops | 5.5% ABV Tasting notes: Crisp and crushable.',
'https://imgur.com/6Vx7mmo');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (74, 
10, 
'Short Bursts', 
'Barley wine', 
8.0, 
'Barley wine fermented with a few of our preferred Belgian yeast strains | 8% ABV Tasting notes: Sticky caramel & toffee pudding with a gentle dusting of our favorite American hops.',
'https://imgur.com/1f7ILrp');