<template>
  <div class="beers-list">
    <div class="beer" v-for="beer in beers" :key="beer.id">
      <div class="name">{{beer.name}}</div>
      <div class="type">by {{beer.type}}</div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'beers-list',
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
        { id: 8, name: 'ESA', type: 'Extra Special Ale'},
        { id: 9, name: 'Harvest from the Hood', type: 'Wet Hopped Ale'},
        { id: 10, name: 'Newbold IPA', type: 'IPA'},
        { id: 11, name: 'Joe Coffee Porter', type: 'Coffee Porter'},
        { id: 12, name: 'Rowhouse Red', type: 'Philadelphia Style Ale'},
        { id: 13, name: 'Kenzinger', type: 'Golden Ale'},
        { id: 14, name: 'Walt Wit', type: 'Belgian-Style White Ale'},
        { id: 15, name: 'Working Cat', type: 'Pale Ale' },
        { id: 16, name: 'Yous Gotta Gose', type: 'Gose'},
        { id: 17, name: 'There`s No Crying in Baseball', type: 'Mango IPA'},
        { id: 18, name: 'Purple Monkey Dishwasher', type: 'Chocolate Peanut Butter Porter'},
        { id: 19, name: 'Stacy`s Mom', type: 'Citra Pale Ale'},
        { id: 20, name: '#Adulting', type: 'Guava IPA'},
        { id: 21, name: 'I`ll Have What She`s Having', type: 'Chocolate Hazelnut Imperial Stout'},
        { id: 22, name: 'Santa! I Know Him!', type: 'Festive Saison'},
        { id: 23, name: '#ICANTEVEN', type: 'Watermelon Blonde Ale'},
        { id: 24, name: 'New Phone, Who Dis?', type: 'Caramel Macchiato Porter'},
        { id: 25, name: 'Alien Church', type: 'IPA' },
        { id: 26, name: 'Helles Other People', type: 'Lager'},
        { id: 27, name: 'Austere Modular', type: 'Lager'},
        { id: 28, name: 'Little Log Cabin', type: 'Simcoe Oat Double'},
        { id: 29, name: 'HopHands', type: 'Pale Ale'},
        { id: 30, name: 'Ourison', type: 'Saison'},
        { id: 31, name: 'Trendler Schwarzbier', type: 'Black Lagerbier'},
        { id: 32, name: 'Banana Split Double Milkshake IPA', type: 'Milkshake IPA:'},
        { id: 33, name: 'We Are All Infinite Energy Vibrating At The Same Frequency', type: 'Wheat IPA'}
      ]
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
