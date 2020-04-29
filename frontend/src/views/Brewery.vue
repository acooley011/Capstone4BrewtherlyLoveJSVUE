<template>
<main v-if="breweryDetails !== null">

<div class="tile is-ancestor">
  <div class="tile is-parent">
    <article class="tile is-child box">
      <!-- TODO change DB to add '.png' to img urls-->
     <img :src="breweryDetails.brewery.breweryLogoUrl + '.png'" width="500vw" style="margin-right: 15vw;"/>
      <p>{{brewery.address}}</p>
      <p>{{brewery.city}}</p>
      <p>{{brewery.zip}}</p>
      <p>{{brewery.neighborhood}}</p>
      <p>{{brewery.contact}}</p>
      <p>{{brewery.businessHours}}</p>
      
    </article>
  </div>
  <div class="tile is-parent is-8">
    <article class="tile is-child box">
      <p class="title">{{breweryDetails.brewery.name}}</p>
      
      <div class="content">
        <p>{{breweryDetails.brewery.description}}</p>
      </div>
    </article>
  </div>
</div>
  

<div class="tile is-ancestor" style="flex-wrap:wrap">
  <div class="tile is-parent is-4"  v-for="beer in breweryDetails.beerList" v-bind:key="beer.id">
     <article class="tile is-child box">
          <p class="title">{{beer.name}}</p>
          <p class="subtitle">{{beer.type}}</p>
          <p class="subtitle">ABV: {{beer.abv}}%</p>
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
      brewery: null,
      breweryId: 1, 
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
    .then(details => {
      this.breweryDetails = details;
      this.brewery = this.breweryDetails.brewery;
      })
    .catch(err => console.error(err));
    },

  },

  created(){
      this.breweryId = this.$route.params.id
      this.fetchBrewery(); 
  }

  
}
</script>

<style>
</style>