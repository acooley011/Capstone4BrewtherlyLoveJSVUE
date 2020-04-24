<template>
  <div class="products-list">
    <h1>Beers from: {{ this.$route.params.brewery }}</h1>
    <beer-list v-bind:beers="beers"/>
  </div>
</template>

<script>
//this is the beers by brewer
import data from '../assets/data/beers.json'
import BeerList from '@/components/BeerList.vue'

export default {
  name: 'products',
  components: {
    BeerList
  },
  data() {
    return {
      allBeers: data,
      items: []
    }
  },
  methods: {
    getBeers(brewery) {
      this.items = this.allBeers.filter((beer) => beer.brewery == brewery);
    }
  },
  created() {
   console.log("hello from product list in view");
   const brewery = this.$route.params.department;
   this.getProducts(brewery);
  }
}
</script>
