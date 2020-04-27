<template>
<main v-if="breweryDetails !== null">

<div class="tile is-ancestor">
  <div class="tile is-parent">
    <article class="tile is-child box">
     <img src="../assets/images/Breweries/breweryYards.png" width="500vw" style="margin-right: 15vw;"/>
     <p>500 Spring Garden St.</p>
      <p>Philadelphia</p>
      <p>19123</p>
      <p>Northern Liberties</p>
      <p>info@yardsbrewing.com</p>
      <p>Sun: 11am to 10pm.</p>
      <p>Mon-Fri: 11:30am to 11pm.</p>
      <p>Sat: 11am to 11pm.</p>
    </article>
  </div>
  <div class="tile is-parent is-8">
    <article class="tile is-child box">
      <p class="title">Yards Brewing Company</p>
      
      <div class="content">
        <p>Yards has been brewing Philly's beer since 1994. We’ve grown from a garage-sized operation in Manayunk all the way up to our current location at 500 Spring Garden Street in Northern Liberties. And we couldn't have done it without your support through the years. Our beers always have and always will be brewed, bottled, kegged, and canned for the hard working people of Philadelphia and beyond.</p>
        <p>You can FIND YARDS throughout the Mid-Atlantic Region in Pennsylvania, New Jersey, Delaware, and Maryland. Or you can visit our TAPROOM to go on a BREWERY TOUR and try specialty beers only available at Yards. PHILADELPHIA PALE ALE and BRAWLER, both nationally recognized ales, lead our balanced portfolio of quality, handcrafted beers including nine year-round offerings and several seasonal and limited releases.</p>
      </div>
    </article>
  </div>
</div>
  

<div class="tile is-ancestor" style="flex-wrap:wrap">
  <div class="tile is-parent is-4"  v-for="beer in breweryDetails.beerList" v-bind:key="beer.id">
     <article class="tile is-child box">
          <p class="title">{{beer.name}}</p>
          <p class="subtitle">Beer ABV: {{beer.abv}}</p>
          <p class="subsubtitle">{{beer.description}}</p><br/>
          <figure>
            <img :src="beer.imgUrl + '.png'">
          </figure>
        </article>
  </div>
 
</div>

</main>
</template>

<script>

import auth from "../auth.js";

export default {

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

<style>
</style>