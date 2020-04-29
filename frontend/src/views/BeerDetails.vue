<template>
<div class="tile is-ancestor">
  <div class="tile is-vertical is-8">
    <div class="tile">
      <div class="tile is-parent is-vertical">
        <article class="tile is-child notification is-primary">
          <p class="title">Vertical...</p>
          <p class="subtitle">Top tile</p>
        </article>
        <article class="tile is-child notification is-warning">
          <p class="title">...tiles</p>
          <p class="subtitle">Bottom tile</p>
        </article>
      </div>
      <div class="tile is-parent">
        <article class="tile is-child notification is-info">
          <p class="title">Middle tile</p>
          <p class="subtitle">With an image</p>
          <figure class="image is-4by3">
            <img src="https://bulma.io/images/placeholders/640x480.png">
          </figure>
        </article>
      </div>
    </div>
    <div class="tile is-parent">
      <article class="tile is-child notification is-danger">
        <p class="title">Wide tile</p>
        <p class="subtitle">Aligned with the right tile</p>
        <div class="content">
          <!-- Content -->
        </div>
      </article>
    </div>
  </div>
</div>
</template>

<script>
export default {
  name: 'beer-details'
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