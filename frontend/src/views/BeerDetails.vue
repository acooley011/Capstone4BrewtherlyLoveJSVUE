<template>
<div class="tile is-ancestor">
    <div class="tile is-parent is-8">
    <article class="tile is-child box">
      <p class="title">Deep Cut Pilsner</p>
      <p class="type">Pilsner</p>
      <p class="abv">ABV: 5.0%</p>
      <div class="content">
        <p>'Dry, lightly bready, with sweet herb & spice hop character.'</p>
      </div>
    </article>
  </div>
  <div class="tile is-parent">
    <article class="tile is-child box">
      <img src="https://i.imgur.com/AQXVesw.jpg" />
    </article>
  </div>
<!--  <div class="field is-center" id="review">
  <label class="label">Review:</label>
  <div class="control">
    <textarea name="review" id="reivew" cols="60" rows="10" v-model="review.review" class="textarea" placeholder="Your text here" required></textarea>
  </div>
</div>-->
</div>

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

<style scoped>

#review {
  text-align: center;
}

.link-text {
color: blue;
	font-size: 14px;
}

.link-text:hover {
  text-decoration:underline;
}

.text-box {
  opacity: 0.92;
  width: 30vw;
}

section {
  align-content: center;
  justify-content: center;
}

.main-content {
margin-left: 32.3vw;
min-width: 225px;
justify-content: center;
padding: 4vw;

}


</style>


<!--<template>
  <div class="beer-details">
    <h1>HEY IS THIS WORKING</h1>
    <div class="beer">
      <img v-bind:src="require('../assets/images/beers/' + beer.img)" />
      <div class="details">
        <div><span class="label">ABV:</span> {{ beer.abv }}</div>
        <div><span class="label">Price:</span> ${{ beer.price }}</div>
        <div><span class="label">Department:</span> {{ beer.brewery }}</div>
        <div><span class="label">Description:</span> This is a description of this awesome product and you simply must try it out.</div>
        <router-link to="/reviews" tag="button">Review this Beer</router-link>
      </div>
    </div>
    <button v-on:click="goBack">GO BACK</button>
  </div>
</template>

<script>
//this is where the beers come from, its called products because I got it from old homework number 12
import data from '../assets/data/beerlist.json'

export default {
  name: 'beer',
  data() {
    return {
      allBeers: data,
      beer: null
    }
  },
  methods: {
    goBack() {
      this.$router.go(-1);
    }
  },
  created() {
    this.product = this.allBeers.find(p => p.sku == this.$route.params.sku);
  }
}
</script>-->