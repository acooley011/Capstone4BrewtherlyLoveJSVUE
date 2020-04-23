-- Password for this user is 'greatwall'
INSERT INTO users ("username", "password", "salt", "role") VALUES
('user',
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
'Yards has been brewing Philly`s beer since 1994. Weâ€™ve grown from a garage-sized operation in Manayunk all the way up to our current location at 500 Spring Garden Street in Northern Liberties. And we couldn`t have done it without your support through the years. Our beers always have and always will be brewed, bottled, kegged, and canned for the hard working people of Philadelphia and beyond.', 
'https://imgur.com/mIfGksv');

-- PBC --
INSERT INTO breweries (brewery_id, name, address, city, zipcode, neighborhood, contact, business_hours, description, brewery_img)
VALUES (2,
'Philadelphia Brewing Co.',
'2440 Frankford Ave.'
'Philadelphia',
'19125',
'Fishtown',
'215-427-2739',
'Mon-Sun: 1pm to 8pm',
'Decades of brewing experience and an unwavering passion for the science of brewing are what define us best. We skillfully create our recipes by using only the best ingredients available. By adapting old world beer styles with modern brewing techniques, we have developed unique flavors that represent Philadelphia proudly. With more than a dozen different styles of ales and lagers brewed annually we have a beer for every discerning palate. In addition to operating the oldest and largest brewing facility in Philadelphia we are also fiercely independent. We brew fresh beer daily and deliver fresh beer daily — directly to our loyal customers. We also believe that there is more than just great beer behind a successful brewery.  It’s our company’s values that put our community, environment and people right up there with the bottom line.  Come for a visit and see for yourself how our commitment and independence sets us apart from the rest.',
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
INSERT INTO breweries (brewery_id, name, address, city, zipcode, neighborhood, contact, description, business_hours, brewery_img)
VALUES (4,
'Tired Hands Biergarten', 
'2213 Frankford Avenue',
'Philadelphia',
'19125',
'Fishtown',
'267-930-8645',
'Seasonal'
'Philly-based fans of Tired Hands Brewing Company won’t have to trek out to Ardmore to sip a wide selection of the cult favorite craft brewer’s beers any more: over the weekend, the Tired Hands Biergarten began pouring at 2213 Frankford Avenue.The 7,000-square foot seasonal outdoor space is kicking off with a hay bale-festooned High Harvest theme for fall. On tap will be 12 different drafts — from their Fermentaria and Brewcafe in addition to oak-aged varieties stored in their Dispensary — plus their sought-after Alien Church (an IPA brewed with oats) in cans, bottles of 333 Kombucha, and snacks', 'www.tiredhands.com', 'Tues-Fri: 4pm - 12am, Sat-Sun: 12pm -1am'
'https://imgur.com/OjGdv5d');

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
'We’ve found a home here in Philadelphia, a city that’s reclaiming its space on the national stage, but isn’t afraid to be itself. As we got to know Philly, we fell in love with its rich brewing history. We were amazed by the number of breweries that existed here (nearly 700 before Prohibition was enacted). Each neighborhood had a brewery that served the local residents, and beer was a part of every table. We want to make that a reality for our neighbors today. We think you should know your brewer and be able to watch your beer being made.WE THINK BEER SHOULD STILL BE AT THE CENTER OF EVERY TABLE.',
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
'Kowchak is an experienced businessman and brewer who received his MBA in Entrepreneurship from Drexel University. Additionally, he graduated from the Cider and Perry Academy in the UK. He plans for his brewery to be registered as a B-corporation, which means they’re pressing cider as environmentally friendly as possible. They’re doing this by distributing their product in cans as opposed to bottles, and have the vision of their new site being completely solar powered. They’re also keeping their produce local, are using apples from PA, and also have plans to create a cider using NJ blueberries.',
'https://imgur.com/9DOh39T');


--YARDS BEERS--
INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (1, 
1, 
'Philthy', 
'IPA', 
6.5,
'People in Philly donâ€™t have a filter, and neither does our Philthy Hazy IPA. This bold, aromatic ale is loaded with tropical and citrus hops character and has that classic hazy, golden color. And just like the city where itâ€™s brewed, this unapologetic IPA is left unfiltered.',
'https://imgur.com/OjGdv5d');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (2, 
1, 
'Loyal Lager', 
'Lager', 
5.0,
'25 years after opening our first garage brewery in Manayunk, weâ€™ve built our dream brewery in the heart of the city â€“ all thanks to our fans who have been loyal since the beginning. As a sign of our gratitude, weâ€™ve used our new world-class brewing system to create Loyal Lager: a crisp, easy-drinking American Craft Lager brewed with two-row malt and aromatic Loral hops. Itâ€™s what a clean, high-quality lager is meant to be.',
'https://imgur.com/i0GyN0b');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (3, 
1, 
'Philadelphia Pale Ale', 
'Pale Ale', 
4.6, 
'Not to be boastful, but we believe that all other ales pale in comparison to this Philadelphia favorite. Dry-hopped with an abundance of distinctive Simcoe hops, this straw-colored pale ale is more drinkable than bitter, more aromatic than aggressive. Now in cans, itâ€™s great for poolside. And look for the new 19.2oz cans at the ballpark.',
'https://imgur.com/1rXIv6T');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (4, 
1, 
'Brawler', 
'English Mild Ale', 
4.2, 
'Crafted in the style of an English mild, this malt-forward ale is great when you want to go a few rounds. Its smooth character, hints of caramel and toast and remarkable drinkability define this ruby-colored brew as a knockout session ale.',
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
'The people have spoken. We are pleased to announce that PYNK is now available all year-round! Each sip of PYNK starts with a crisp, fruity zing and finishes refreshingly dry. The delightful pink hue comes from heaps of fresh raspberries and cherries in every batch. Itâ€™s no wonder PYNK is called the rosÃ© of beer. So letâ€™s raise our bottles and pints to the good things in life â€” like family, friends, and beer â€” that bring us all together.',
'https://imgur.com/YWNdddk');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (8, 
1, 
'ESA', 
'Extra Special Ale', 
6.0, 
'Our first-ever and most-beloved brew, ESA helped establish a following for cask-conditioned beer in the United States back in the â€˜90s. East Kent Golding hops give this British-inspired ale a subtle spiciness, which complements the strong malt backbone. ESA is floral, earthy and smooth with hints of chocolate and caramel, rounding out this deep chestnut-colored ale.',
'https://imgur.com/YWNdddk');

-- PBC BEERS --
INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (1,
2,
'Harvest from the Hood',
'Wet Hopped Ale',
7.0,
'Every autumn we release this fresh-hopped beer brewed with hops grown by Philadelphia Brewing Co.® right in our brewery courtyard, along with more hops grown by friends around Philadelphia like Greensgrow Farms. Harvest from the Hood is brewed on the same day that the locally grown hops are hand picked – giving this brew a juicy, bright hop flavor and aroma.',
'https://imgur.com/laYzgAm');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (2,
2,
'Newbold IPA',
'IPA',
7.0,
'Newbold delivers an intensity of flavors. Loaded with a variety of hops, this beer exhibits the citrusy flavors and aromas that India Pale lovers crave.',
'https://imgur.com/VUzfJK8'
);

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (3,
2,
'Joe Coffee Porter',
'Coffee Porter',
5.5,
'Joe is not your average beer! This ale is brewed with locally-roasted, organic, coffee from Passero’s Coffee Roasters. Dark Munich and chocolate malts combine to create a well-balanced, flavorful porter with a fresh roasted coffee aroma. Savor ’til the last drop!',
'https://imgur.com/iRl7iO5');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (4,
2,
'Rowhouse Red',
'Philadelphia Style Ale',
5.7,
'We meld American and European ingredients into Rowhouse Red; a complex ale with flavors of rye, toasted malt, and Belgian ale yeast. Relax and enjoy the subtle intricacies of this unique brew wherever your heart calls home.',
'https://imgur.com/NVyxGnp');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (5,
2,
'Kenzinger',
'Golden Ale',
'This crisp, light-bodied, golden beer is the very definition of refreshment. The combination of premium German pilsner malts and American Noble hops aims to please your taste buds and satisfy your thirst.',
'https://imgur.com/vQRWeoH');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (6,
2,
'Walt Wit',
'Belgian-Style White Ale',
4.5,
'The American poet, Walt Whitman, once portrayed a sunset over Philadelphia as “…a broad tumble of clouds, with much golden haze and profusion of beaming shaft and dazzle”. Pour yourself a bottle of Walt Wit Belgian-Style White Ale and see what he was talking about. A pinch of spice and a whisper of citrus lend complexity to this fragrant and satisfying ale.',
'https://imgur.com/kAfZAoF');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (7,
2,
'Working Cat',
'Pale Ale',
5.0,
'Working Cat is an ode to Duke, our very own working brewery cat. It is a double dry hopped pale ale brewed with Amarillo and Falconer’s Flight hops, as well as grapefruit and orange peels, which gives the 5% session-able beer balanced citrus notes with minimal bitterness. This newly-released limited seasonal brew is smooth, citrusy and light bodied, and is packed full of aroma.',
'https://imgur.com/YxHkxdD');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (8,
2,
'Yous Gotta Gose',
'Gose',
4.5,
'A pineapple, blueberry Gose.',
'https://imgur.com/nvi0ngE');

--EVIL GENIUS BEERS--
INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (1,
3,
'There`s No Crying in Baseball',
'Mango IPA',
6.0,
'Brewed with a delicate balance of malted barley and wheat, hopped with three of the juiciest hops we can find, then infused with all-natural mango. The wheat provides a balanced, smooth mouthfeel, while the exotic North American & Australian hops add a distinct, unmistakable fruity darkness. Finally, we top it all off with all-natural mango, resulting in a fruit IPA that is endlessly drinkable.',
'https://imgur.com/GhEGTYv');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (2,
3,
'Purple Monkey Dishwasher',
'Chocolate Peanut Butter Porter',
6.7,
'Purple Monkey Dishwasher is our robust porter made with Chocolate and Peanut Butter. We start with a world-class American-style porter recipe, which is already laden with notes of chocolate, sweet malts, caramel, and molasses, and then take it to the NEXT LEVEL by infusing it with natural chocolate and peanut butter! The final product is like a candy bar in a bottle that is deceptively quaffable despite it’s strength. Just take one sip and you’ll understand why this is our signature, year round porter.',
'https://imgur.com/kyoxCLm');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (3,
3,
'Stacy`s Mom',
'Citra Pale Ale',
7.5,
'Stacy’s Mom is our American IPA dry-hopped exclusively with Citra hops. Soft on the palate with extremely low bitterness, this is a great example of a new-school American IPA. Citra hops provide an explosive aroma of tropical fruits, lemon peel, peach and mango, complimented by a clean and slightly toasty malt base. Think you don’t like IPAs? Give Stacy’s Mom a try!',
'https://imgur.com/LQBYLbR');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (4,
3,
'#Adulting',
'Guava IPA',
6.8,
'#adulting is our Guava-infused IPA! Pale and crystal malts marry perfectly with Citra & Cascade hops, creating an easy drinking, creamy, medium-bodied, clean, smooth IPA. It is then infused with all-natural guava, turning this already delicious IPA into something truly unique. Big, bold hop notes of tropical fruit, watermelon, and lemon, balanced perfectly by a slightly sweet malt backbone and juicy, refreshing guava.',
'https://imgur.com/5A3MtbN');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (5,
3,
'I`ll Have What She`s Having',
'Chocolate Hazelnut Imperial Stout',
9.4,
'I’ll Have What She’s Having is our Imperial Stout made with chocolate and hazelnut. This limited release strong dark beer is something only Evil Genius could come up with – a rich, creamy, over-the-top stout with layered flavors of roasted barley, molasses, chocolate, caramel, and hazelnut. Not too heavy on the palate, and with a surprisingly dry finish, this sturdy yet drinkable stout is perfect for the winter months.',
'https://imgur.com/7HJEz51');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (6,
3,
'Santa! I Know Him!',
'Festive Saison',
7.2,
'Santa!! I Know him! is our holiday saison brewed with rose hips, chamomile, black currants and dark Belgian candi syrup. Deep, complex and intriguing, this bone-dry Belgian-style ale is sure to seduce you, or the one you’re with. Roses, chamomile, and currants have long been considered powerful aphrodisiacs, so we decided to combine them with mysterious and beguiling Belgian saison yeast. The result is something very special and sure to help spice up nights spent at home during the cold winter months. Have you been Naughty or Nice this year – or both?',
'https://imgur.com/OIiyw5R');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (7,
3,
'#ICANTEVEN',
'Watermelon Blonde Ale',
5.6,
'Brewed with equal parts 2-row barley and malted winter wheat, hopped ever-so-gently with Warrior, and infused with all-natural watermelon, #ICANTEVEN is the most refreshing and crushable ale in our line-up. Designed to satisfy all beer drinkers, this fruit-infused wheat ale will have you saying “I can’t even..” Perfect for drinking outside!',
'https://imgur.com/sBqzw9U');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (8,
3,
'New Phone, Who Dis?',
'Caramel Macchiato Porter',
6.0,
'Your favorite espresso beverage has now become your favorite adult beverage! Brewed with American barley, caramel and chocolate malt, and a touch of dark wheat. Gently hopped with American and German hops, and then infused with caramel and locally roasted La Colombe coffee. Full-bodied, smooth and robust, with notes of sweet caramel, mocha, and chocolate.',
'https://imgur.com/WgP2SwD');

--Tired Hands Beers--	
INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (1,
4,
'Alien Church',
'IPA', 
6.5,
'People in Philly don’t have a filter, and neither does our Philthy Hazy IPA. This bold, aromatic ale is loaded with tropical and citrus hops character and has that classic hazy, golden color. And just like the city where it’s brewed, this unapologetic IPA is left unfiltered.',
'https://imgur.com/OjGdv5d');


INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (2,
4, 
'Helles Other People', 
'Lager',
 4.8,
 'Brewed with 100% German Pilsner malt and hopped lightly with Hallertau Mittelfrüh. Fermented with our house lager yeast and cold conditioned for five weeks before its release. Refined and eminently crushable.
Notes of white grape, hay, clover honey, white peach, and fresh cut grass.',
'https://imgur.com/i0GyN0b');


INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (3,
4, 
'Austere Modular',
 'Lager', 
 4.6, 
 'Built with a simple grist of German Pilsner malt, and hopped throughout the boil with German Perle, Mittelfrüh, and Spalter Select from our annual trip to Bavaria. Fermented with our house Lager yeast, and cold conditioned for four weeks before packaging. Perhaps our most refined batch to date? Not sure... who remembers Batch #1? =) Austere notes of black peppercorn, lemon pith, 
fresh dough, loose leaf green tea, Suze spritz, and white grape.',
'https://imgur.com/1rXIv6T');


INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (4,
4,
'Simcoe Oat Double',
'Lager', 
9.0, 
'We brewed this one with an absolutely massive amount of wholesome oats and poured in the perfect amount of luscious lactose sugar to round out the comfortable body. Sunny Day was then Double Dry Hopped with mostly Australian Galaxy and a touch of hand selected US Simcoe and Mosaic.'
'https://imgur.com/Hzz8FFC');


INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (5,
 4, 
'HopHands', 
'Pale Ale',
 5.5,
 'Brewed with oats. Hopped intensely with Simcoe, Centennial, and Amarillo. Hazy, juicy, and imminently crushable. Our precious Pale Ale. -Notes of tangelo, kiwi, dank, pine sap, nectarine,'
'https://imgur.com/3LLdenw');


INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (6,
 4, 
'Ourison', 
'Saison',
 4.8, 
'Ourison is Our Saison, SaisonHands, left to condition in oak and then allowed to fully express itself via a lengthy keg conditioning period. The end result is a highly refined snappy and pungent Saison that, I feel, is one of
the most simplistic and exciting iterations of Saison that we have ever produced.-Notes of lemon zest, pear, barnyard, hay, guava, juicy fruit, and earth.',
'https://imgur.com/YWNdddk');


INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)

VALUES (7,
4, 
'Trendler Schwarzbier',
'Black Lagerbier', 
5.5, 
'Brewed with Pilsner malt, as well as a tasteful flurry of German specialty and dark malts.Hopped assertively with German Hersbrucker from our buddies in Bavaria, fermented with our house Lager yeast, and cold conditioned for four weeks. Extremely stark, restrained, and elegant, yet eminently crushable.-Notes of baker’s chocolate, pumpernickel toast, mild peat, and burnt sugar.'
'https://imgur.com/YWNddd');


INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)

VALUES (8,
4,
'Banana Split Double Milkshake IPA',
'Milkshake IPA:',
 9.0, 
 'An unabashedly desserty riff on our hilarious Culinary IPA series, originally conceived with our sincerely magical associates over at Omnipollo. Brewed with a veritable mountain of luscious oats and
 wheat, and a bit of lactose sugar. Conditioned atop a hefty helping of cacao, whole Madagascar vanilla beans and ripe banana puree, then mercilessly dry-hopped with the very choicest Mosaic and Citra. This one really gets at the
heart of this series.-Notes of banana taffy, strawberry shortcake, vanilla candies, chocolate, and banana.'
'https://imgur.com/YWNdddk');


INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (9,
4, 
'We Are All Infinite Energy Vibrating At The Same Frequency', 
'Wheat IPA', 
6.5, 
'OG BrewCafé classic triumphantly returns! Brewed with malted wheat and hopped intensely with Centennial and our then, now, and forever favorite: Simcoe.
 Vibrant & drippy & juicy! Notes of tangerine, mango nectar, bubblegum, spruce tips, and candied pineapple.'
'https://imgur.com/YWNdddk');

--SEPARATIST BEERS--

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (1,
5,
'Classic Cream Ale',
'Cream Ale',
5.0,
'Our quintessential American Cream Ale made for drinking any time, and day. Comprised of Bohemian Pilsner malt and flaked maize, hopped gently with Hallertauer, then fermented low and slow for 3 weeks with a very cool ale strain, this beer is as crisp and easy drinking as they come.',
'https://imgur.com/ZxD3Zte');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (2,
5,
'PineApple Smoosh',
'Smoothie Pineapple IPA',
8.0,
'This Smoothie India Pale Ale was double dry-hopped with Mosaic and Centennial hops and then loaded up with tons of Pineapple and a bit of lactose for a sweet, tropical and fruity finish.',
'https://imgur.com/X4me5De');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (3,
5,
'Good Good',
'Double IPA',
8.0,
'A hazed-out, new school, fan favorite DIPA, double dry-hopped with a blend of Simcoe, Citra and Centennial hops. This beer boasts a pillowy mouthfeel with soft lingering bitterness. Its big fruity punches are balanced by pangs of spruce sap, pine and notes of resin',
'https://imgur.com/lWeJbJz');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (4,
5,
'Sketches of Cascade',
'Wild Pale Ale',
5.8,
'Sketches of Cascade is our second dissertation on the effects of dry-hopping a mature stock of wild ale fermented entirely in oak casks with a heavy hand of whole flower Cascade hops. Steeped low and slow, the result is bright and citrus-y with punches of grapefruit perfectly balanced by the herbaceous notes of the hops.',
'https://imgur.com/ilMUInU');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (5,
5,
'Jung Love',
'German Style Kellerbier',
'Our young and unfiltered German-Style Kellerbier. Hopped with beautiful Hallertauer hops and cold conditioned for several weeks on a special German yeast strain. Jung Love is everything you could want in a lagerbier, with its clean and crisp flavor high quaffability.',
'https://imgur.com/0eRxCFW');

--LOVE CITY BEERS--
INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (1,
6,
'Love City Lager',
'American Lager',
4.0,
'Lightly malty with a hint of orange aromatics give every bright sip a clean landing. The perfect gateway for macro drinkers looking to step-up and taste a craft version of a super-crisp style.',
'https://imgur.com/EM49UiP');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (2,
6,
'Unity IPA',
'American IPA',
5.5,
'Assertive, yet highly drinkable American IPA. Double dry-hopped with Mosaic, Citra and Simcoe for a robust citrusy hop character. Light malt backbone, hoppy finish, low bitterness.',
'https://imgur.com/DDUQ03A');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (3,
6,
'Sylvie Stout',
'Oatmeal Stout',
5.0
'Full-bodied English-style oatmeal stout with rich dark chocolate and espresso character with a very light citrus hop character and round, smooth finish.',
'https://imgur.com/BcDo1PI');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (4,
6,
'Earaserhood Hazy IPA',
'New England Style IPA',
7.2,
'Our signature hazy IPA! Triple dry-hopped with Mosaic, Citra and Centennial for a huge mango hop character with a smooth, round body. Moderate malt backbone and juicy finish.',
'https://imgur.com/ZZuAeuZ');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (5,
6,
'Tart Beats Plum',
'Sour',
5.8,
'The second in our tart series! Kettle-soured with lactic bacteria, with plum juice added to fermentation. Refreshingly tart with a light sweetness & balanced plum flavor.',
'https://imgur.com/EJbTEys');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (6,
6,
'Totally Wired',
'Coffee Brown Ale',
4.7,
'English-style brown ale. Aged on Lunar Lander espresso from our neighbors at Elixr coffee roasters',
'https://imgur.com/cis2uNW');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (7,
6,
'Deep Cut',
'Pilsner',
5.0,
'Dry, lightly bready, with sweet herb & spice hop character.',
'https://imgur.com/AQXVesw');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (8,
6,
'Generator Wheat',
'Wheate Ale',
4.2,
'Wheat beer featuring spices that pay homage to our North Chinatown neighborhood. Generous lemongrass and orange aroma counterbalanced by coriander.',
'https://imgur.com/WulkQ5e');

--ORIGINAL XIII Ciders--
INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (1,
7,
'Sir Charles Original Hard Cider',
'Semi-Dry Cider',
6.5,
'Semi-dry hard apple cider made with local, Pennsylvania apples.',
'https://imgur.com/A8G0V83');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (2,
7,
'Sir Charles Deep Blueberry Sea',
'Fruit Cider',
6.5,
'Semi-dry cider flavored with Blueberry.',
'https://imgur.com/pOH99nr');

INSERT INTO beers (beer_id, brewery_id, name, type, abv, description, img_url)
VALUES (3,
7,
'')