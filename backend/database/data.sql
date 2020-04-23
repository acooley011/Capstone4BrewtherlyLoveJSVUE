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