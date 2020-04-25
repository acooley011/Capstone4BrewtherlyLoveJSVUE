<template>
<body>
  <div id="brewery-list">
    <h1>Breweries</h1>
    <p>filler text.</p>
    <div class="brewery-list">
      
      <router-link v-for="brewery in breweries" v-bind:key="brewery.path" :class='brewery-list.class' v-bind:to="{path:'brewery-list' + brewery.path}" >
        <img v-bind:src="require('../assets/images/Breweries' + brewery.banner)"/></router-link>
    </div>

  </div>
  </body>
</template>

<script>
export default {
  name: 'brewery-list',
  data() {
    return {
      breweries: [
        { path: '/brewery-list', banner: 'breweryARS.png' },
        { path: '/brewery-list', banner: 'breweryCrimeAndPunishment.png'},
        { path: '/brewery-list', banner: 'breweryDockStreet.png'},
        { path: '/brewery-list', banner: 'breweryEvilGenius-MUSTEDIT.png' },
        { path: '/brewery-list', banner: 'breweryLoveCity.png' },
        { path: '/brewery-list', banner: 'breweryOriginal13.png' },
        { path: '/brewery-list', banner: 'breweryPBC.png' },
        { path: '/brewery-list', banner: 'brewerySeperatist.png' },
        { path: '/brewery-list', banner: 'breweryTiredHands.png' },
        { path: '/brewery-list', banner: 'breweryYards.png' }

      ]
    }
  }
}
</script>

<style scoped>

.brewery-list {
  display: flex;
  flex-direction: row;
  justify-content: space-around;
  text-align: center;
}

</style>