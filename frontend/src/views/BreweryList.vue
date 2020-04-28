<template>
<main class="main" v-if="breweryDetails !== null">
  
  <div class="is-size-4 has-text-weight-semibold box has-text-centered text-box"
  v-for="brewery in breweryDetails" v-bind:key="brewery.id">
    
    <h3><strong>{{brewery.name}}</strong></h3><br/>
    <div class="columns">
      <div>
            <img :src="brewery.breweryLogoUrl">
      </div>
      <div id="brewery-info" class="text-box" >
        <p>{{ brewery.description }}</p>
      </div>
    </div>
    </div>


     <div class="is-size-4 has-text-weight-semibold box has-text-centered text-box">
    <h3><strong>Crime & Punishment Brewing Company</strong></h3><br/>
    <div class="columns">
      <div>
       <img src="../assets/images/Breweries/breweryCrimeAndPunishment.png"/>
      </div>
      <div id="brewery-info" class="text-box" >
        <p>From ales and lagers, to saisons and IPAs, there's something on tap for everyone. C+P aims to blend the once-great local brewing tradition with newer craft techniques and international inspirations. They have designed a rotating menu of distinctive brews and Russian-influenced dishes done their way.</p>
      </div>
      </div>
    </div>

        <div class="is-size-4 has-text-weight-semibold box has-text-centered text-box">
    <h3><strong>Dock Street Brewery</strong></h3><br/>
    <div class="columns">
      <div>
       <img src="../assets/images/Breweries/breweryDockStreet.png"/>
      </div>
      <div id="brewery-info" class="text-box" >
        <p>Come by Dock Street Brewpub for a great, laid-back spot to hang out with friends and family, enjoy hand-tossed, wood-fired pizza, fresh beer poured direct from the tanks, or a brewery tour. (Or all of the above.) Check back often for updates like new additions to the menu for game days, parties and holidays. Then, swing by Dock Street Cannery + Tasting Lounge, voted Philadelphia Magazine's Best New Bar, located right next door to the main brewpub but with a separate entrance. There, you'll find craft cocktails with house-made syrups and Pennsylvania spirits, and of course, Dock Street Beer. We`re also known to throw a mean party over there, featuring any and everything from comedy, prose reading, cheese-making, glass-blowing, mezcal tasting and live tattooing.</p>
      </div>
      </div>
    </div>

    <div class="is-size-4 has-text-weight-semibold box has-text-centered text-box">
    <h3><strong>Evil Genius Beer Company</strong></h3><br/>
    <div class="columns">
      <div>
       <img src="../assets/images/Breweries/breweryEvilGenius-MUSTEDIT.png"/>
      </div>
      <div id="brewery-info" class="text-box" >
        <p>Friends Luke Bowen and Trevor Hayward founded Evil Genius Beer Company in 2011. After meeting in College at Villanova, they bonded over their love of beer and wanted to do something more rewarding with their lives than getting a 9-5 job. Starting with only a few dollars in savings, the company now distributes all over the North East. Known for their humorous and witty branding, Evil Genius beers are easy to spot! Evil Genius opened their new Brewery and Beer Garden in Fishtown, Philadelphia in 2017, and are pleased to welcome Jon Defibaugh (Tired Hands, Earth Bread and Brewery) to their team as Head Brewer.</p>
      </div>
      </div>
    </div>

    <div class="is-size-4 has-text-weight-semibold box has-text-centered text-box">
    <h3><strong>Love City Brewing</strong></h3><br/>
    <div class="columns">
      <div>
       <img src="../assets/images/Breweries/breweryLoveCity.png"/>
      </div>
      <div id="brewery-info" class="text-box" >
        <p>We've found a home here in Philadelphia, a city that's reclaiming its space on the national stage, but isn't afraid to be itself. As we got to know Philly, we fell in love with its rich brewing history. We were amazed by the number of breweries that existed here (nearly 700 before Prohibition was enacted). Each neighborhood had a brewery that served the local residents, and beer was a part of every table. We want to make that a reality for our neighbors today. We think you should know your brewer and be able to watch your beer being made.WE THINK BEER SHOULD STILL BE AT THE CENTER OF EVERY TABLE.</p>
      </div>
      </div>
    </div>

    <div class="is-size-4 has-text-weight-semibold box has-text-centered text-box">
    <h3><strong>Original XIII Ciderworks</strong></h3><br/>
    <div class="columns">
      <div>
       <img src="../assets/images/Breweries/breweryOrignal13.png"/>
      </div>
      <div id="brewery-info" class="text-box" >
        <p>We've found a home here in Philadelphia, a city that's reclaiming its space on the national stage, but isn't afraid to be itself. As we got to know Philly, we fell in love with its rich brewing history. We were amazed by the number of breweries that existed here (nearly 700 before Prohibition was enacted). Each neighborhood had a brewery that served the local residents, and beer was a part of every table. We want to make that a reality for our neighbors today. We think you should know your brewer and be able to watch your beer being made.WE THINK BEER SHOULD STILL BE AT THE CENTER OF EVERY TABLE.</p>
      </div>
      </div>
    </div>

    <div class="is-size-4 has-text-weight-semibold box has-text-centered text-box">
    <h3><strong>Philadelphia Brewing Co.</strong></h3><br/>
    <div class="columns">
      <div>
       <img src="../assets/images/Breweries/breweryPBC.png"/>
      </div>
      <div id="brewery-info" class="text-box" >
        <p>Decades of brewing experience and an unwavering passion for the science of brewing are what define us best. We skillfully create our recipes by using only the best ingredients available. By adapting old world beer styles with modern brewing techniques, we have developed unique flavors that represent Philadelphia proudly. With more than a dozen different styles of ales and lagers brewed annually we have a beer for every discerning palate. In addition to operating the oldest and largest brewing facility in Philadelphia we are also fiercely independent. We brew fresh beer daily and deliver fresh beer daily directly to our loyal customers. We also believe that there is more than just great beer behind a successful brewery.  Its our companys values that put our community, environment and people right up there with the bottom line.  Come for a visit and see for yourself how our commitment and independence sets us apart from the rest.</p>
      </div>
      </div>
    </div>

    <div class="is-size-4 has-text-weight-semibold box has-text-centered text-box">
    <h3><strong>Separatist Beer Project</strong></h3><br/>
    <div class="columns">
      <div>
       <img src="../assets/images/Breweries/brewerySeperatist.png"/>
      </div>
      <div id="brewery-info" class="text-box" >
        <p>If you ask us what we are all about at Separatist Beer Project, the answer is simple: Hops, Lagerbier and Spontaneous Fermentation. From our classic, easy-drinking quintessential Cream Ale to our Wild Ale Blendery series we aim create the best beer possible.</p>
      </div>
      </div>
    </div>

    <div class="is-size-4 has-text-weight-semibold box has-text-centered text-box">
    <h3><strong>Tired Hands Brewing Company</strong></h3><br/>
    <div class="columns">
      <div>
       <img src="../assets/images/Breweries/breweryTiredHands.png"/>
      </div>
      <div id="brewery-info" class="text-box" >
        <p>Philly based fans of Tired Hands Brewing Company won't have to trek out to Ardmore to sip a wide selection of the cult favorite craft brewer's beers any more: over the weekend, the Tired Hands Biergarten began pouring at 2213 Frankford Avenue.The 7,000-square foot seasonal outdoor space is kicking off with a hay bale-festooned High Harvest theme for fall. On tap will be 12 different drafts ' from their Fermentaria and Brewcafe in addition to oak-aged varieties stored in their Dispensary plus their sought-after Alien Church in cans, bottles of 333 Kombucha, and snacks.</p>
      </div>
      </div>
    </div>
    
    <div class="is-size-4 has-text-weight-semibold box has-text-centered text-box">
    <h3><strong>Yards Brewing Company</strong></h3><br/>
    <div class="columns">
      <div>
       <router-link to="/brewery"><img src="../assets/images/Breweries/breweryYards.png"  /></router-link>
      </div>
      <div id="brewery-info" class="text-box" >
        <p>Yards has been brewing Philly's beer since 1994. We've grown from a garage-sized operation in Manayunk all the way up to our current location at 500 Spring Garden Street in Northern Liberties. And we couldn't have done it without your support through the years. Our beers always have and always will be brewed, bottled, kegged, and canned for the hard working people of Philadelphia and beyond.</p>
        <p>You can FIND YARDS throughout the Mid-Atlantic Region in Pennsylvania, New Jersey, Delaware, and Maryland. Or you can visit our TAPROOM to go on a BREWERY TOUR and try specialty beers only available at Yards. PHILADELPHIA PALE ALE and BRAWLER, both nationally recognized ales, lead our balanced portfolio of quality, handcrafted beers including nine year-round offerings and several seasonal and limited releases.</p>
      </div>
      </div>
    </div>
    </main>
</template>

<!--<template>
  <div id="brewery-list">
    <h1>Brewery List</h1>
    <ul>
      <router-link to="/beer-list" active-class="active" tag="li">Yards</router-link>
    
      <li>Tired Hands</li>
      <li>Seperatist</li>

    </ul>
  </div>
</template>-->

<script>

import auth from "../auth.js";

export default {
  name: 'brewery-list',

  data(){
    return {
      breweryDetails: null,
      breweryId: 1, //TODO during the create method, get the brewery id out of the url, see catalog HW
    };
  },

  methods: {
    fetchBrewery() {
      const options = {
        method: "GET",
        headers:{
          "Authorization" : `Bearer ${auth.getToken()}`
          //If you are posting/putting want to add "Content-Type: application/json" -> setting the content type when sending content
        },
        //If doing post/put then body: json.stringify would go here
      };
    fetch(`${process.env.VUE_APP_REMOTE_API}/api/breweryDetails/${this.breweryId}`,options) 
    .then(response => response.json())
    .then(details => this.breweryDetails = details)
    .catch(err => console.error(err));
    }

  },

  created(){
      //TODO Set brewery id here
      this.fetchBrewery(); 
  }

  
}
</script>


<style scoped>

#brewery-list {
  text-align: center;
 
}

#brewery-info {
font-size: 14px;
}

p {
  width: 25vw;
  font-size: 14px;
  padding-bottom: 2vw;
  margin-left: 20vw;
}

img {
  max-width: 50vw;
  min-width: 30vw;

}


</style>