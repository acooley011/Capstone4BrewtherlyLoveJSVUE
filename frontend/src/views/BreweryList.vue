<template>
<body>
  <main class="main">
    <!-- add to main if we ever get this fetch to work v-if="breweryDetails !== null" -->
    <!-- this chunk of code was saved -->
    <div
      class="is-size-4 has-text-weight-semibold box has-text-centered text-box"
      v-for="brewery in breweryList.breweries"
      v-bind:key="brewery.id"
    >
      <h3>
        <strong>{{brewery.name}}</strong>
      </h3>
      <br />
      <div class="columns">
        <div>
          <router-link :to="'/brewery/'+brewery.id">
            <img :src="brewery.breweryLogoUrl" />
          </router-link>
        </div>
        <div id="brewery-info" class="text-box">
          <p>{{ brewery.description }}</p>
        </div>
      </div>
    </div>
  </main>
  </body>
</template>

<!--<template>
  <div id="brewery-list">
    <h1>Brewery List</h1>
    <ul>
      <router-link to="/beer-list" active-class="active" tag="li">Yards</router-link>
    
      <li>Tired Hands</li>
      <li>Seperatist</li>

    </ul>
  </div>
</template>-->

<script>
import auth from "../auth.js";

export default {
  name: "brewery-list",

  data() {
    return {
      breweryList: null,
      breweryId: 1 
    };
  },

  methods: {
    fetchBrewery() {
      const options = {
        method: "GET",
        headers: {
          Authorization: `Bearer ${auth.getToken()}`
          //If you are posting/putting want to add "Content-Type: application/json" -> setting the content type when sending content
        }
        //If doing post/put then body: json.stringify would go here
      };
      fetch(`${process.env.VUE_APP_REMOTE_API}/api/breweryList/`, options)
        .then(response => response.json())
        .then(details => {
          this.breweryList = details;
          this.brewery = this.breweryList.brewery;
        })
        .catch(err => console.error(err));
    }
  },

  created() {
    //TODO Set brewery id here
    this.fetchBrewery();
  }
};
</script>


<style scoped>
#brewery-list {
  text-align: center;
}

#brewery-info {
  font-size: 14px;
}

body {
  background-color: linear-gradient(rgba(255, 255, 255, 0.9), rgba(255, 255, 255, 0.7));
  width: 100vw; 
  height: 100%;

}

p {
  width: 25vw;
  font-size: 18px;
  font-weight: bold;
  padding-bottom: 5vw;
  padding-top: 5vw;
  margin-left: 20vw;
}

img {
  max-width: 40vw;
  max-height: 40vw;
  min-width: 30vw;
 padding-bottom: 5vw;
  padding-top: 5vw;
  padding-left: 2vw;
}
</style>