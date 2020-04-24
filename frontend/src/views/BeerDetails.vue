<template>
  <div class="beer-details">
    <h1>{{ beer.name }}</h1>
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
import data from '../assets/data/products.json'

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
</script>