<template>
  <div class="beers-list">
    <div class="beer" v-for="beer in beers" :key="beer.id">
      <div class="name">{{beer.name}}</div>
      <div class="type">by {{beer.brewery_name}}</div>
    </div>
  </div>
</template>

<script>
import data from '../assets/data/beerlist.json'

export default {
  name: 'beers-list',
  data() {
    return {
      beers: data
    }
  },
  methods: {

  }
}
</script>

<style>
.beers-list {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
  grid-gap: 10px;
  margin-bottom: 40px;
}
.beer {
  text-align: center;
  margin-bottom: 20px;
}
.cover {
  width: 75px;
}
.name {
  font-size: 21px;
  font-weight: 700;
  margin: 5px 0px;
}
.type {
  font-size:12px;
  font-style: italic;
}
</style>
