<template>
  <div :style="{'background-image':'black'}">
    <h1>Beer Lists : {{ this.$route.params.brewery }}</h1>
    <beer-list v-bind:beers="beers"/>
  </div>
</template>

<script>
//this is the beers by brewer
//import data from '../assets/data/beers.json'
import BeerList from '@/components/BeerList.vue'

export default {
  name: 'beer-list',
  components: {
    BeerList
  },
  data() {
    return {
      allBeers: [],
      items: []
    }
  },
  methods: {
    getBeers(brewery) {
      this.items = this.allBeers.filter((beer) => beer.brewery == brewery);
    }
  },
  created() {
   const brewery = this.$route.params.brewery;
   this.getBeers(brewery);
  }
}
</script>

<style scoped>

</style>