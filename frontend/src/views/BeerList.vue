
<template>
  <div class="beer-list">
    <div class="beer" v-for="beer in beers" :key="beer.id">
      <div class="name">{{beer.name}}</div>
      <div class="type">by {{beer.type}}</div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'beer-list',
  data() {
    return {
     beers: [
        { id: 1, name: 'Philthy', type: 'IPA'},
        { id: 2, name: 'Loyal Lager', type: 'Lager'},
        { id: 3, name: 'Philadelphia Pale Ale', type: 'Pale Ale'},
        { id: 4, name: 'Brawler', type: 'English Mild ALe'},
        { id: 5, name: 'IPA', type: 'American IPA' },
        { id: 6, name: 'Love Stout', type: 'Dry Stout'},
        { id: 7, name: 'Pynk', type: 'Tart Fruit Beer'},
        { id: 8, name: 'ESA', type: 'Extra Special Ale'}
       
      ]
    }
  },
  methods: {

  }
}
</script>

<style>

</style>
