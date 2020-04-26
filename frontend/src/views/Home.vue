<template>
<div class="columns">
  <div class="column">
    <img src="../assets/images/brewbannermockup.png" width="100%" />
    <div class="columns is-mobile">
      <div class="column">
        <main id="main-content" class="is-size-4 has-text-weight-semibold box has-text-centered text-box">
        <p><strong>Welcome!</strong></p>
        <p> We keep track of all the breweries in Philadelphia so you don't have to! Browse our website and you will find a list of all the breweries and cider distilleries in Center City and surrounding neighborhoods. Make an account as a beer lover and you will be able to review any beers you try, along with interact with fellow beer lovers. Check out the review page for a list of all the reviewed beers sorted by average rating. Find out which breweries and beers are most popular at a glance.</p><br/>
    <p>Own a brewery? Make a profile page if we don't already have one and keep track of your delicious brew stock for the public to see. Respond to customer questions on the message board too! Philadelphia has so many great places to go and now we can drink up together in the City of Brew-therly Love.</p>
        </main>
      </div>
      <div class="column">
        <router-link to="/brewery-list"><img src="../assets/images/brewmap.png" width="100%" /></router-link>
      </div>
    </div>
      <div class="column">
    <p>TODAY'S FEATURE</p>
    <div class="columns is-mobile">
      <div class="column">
       <img src="../assets/images/Breweries/breweryYards.png" width="100%"/>
      </div>
      <div class="column">
        <p>Beer info goes here</p>
      </div>
    </div>
    </div>
  </div>
    <!--<div class="column">
    <p class="feature">Today's Featured Philly Brew:</p>
    <div class="column">
      <img src="../assets/images/Breweries/breweryYards.png" width="50%"/>
    </div>
    
  </div>
  </div>-->
</div>
</template>

<!--<template>
<div class="columns">
  <section class="section">
      <img src="../assets/images/brewbannermockup.png" width="100%" />
    <br/><br/><br/>
<div class="column">
<main id="main-content" class="is-size-4 has-text-weight-semibold box has-text-centered text-box">
    <p> We keep track of all the breweries in Philadelphia so you don't have to! Browse our website and you will find a list of all the breweries and cider distilleries in Center City and surrounding neighborhoods. Make an account as a beer lover and you will be able to review any beers you try, along with interact with fellow beer lovers. Check out the review page for a list of all the reviewed beers sorted by average rating. Find out which breweries and beers are most popular at a glance.</p><br/>
    <p>Own a brewery? Make a profile page if we don't already have one and keep track of your delicious brew stock for the public to see. Respond to customer questions on the message board too! Philadelphia has so many great places to go and now we can drink up together in the City of Brew-therly Love.</p>
<br/><br/>
</main>
</div>
<section id="beer-feature" class="text-box">
  <h2>Today's Featured Beer</h2>
  <p></p>
</section>
<div class="column">
<img src="../assets/images/brewmap.png" width="50%" />
</div>
<br/><br/>
</section>
</div>
</template>-->


<script>
export default {
  name: 'home'
}
</script>




<style scoped>
.headline-text {
color: black;
	font-size: 40px;
	text-shadow: 
  -1px 1px 0 #FFF,
  1px 1px 0 #FFF,
	1px -1px 0 #FFF,
	-1px -1px 0 #FFF;


}
.text-box {
  opacity: 0.92;
  font-size: 12px;
}
section {
  width: 100%;
}

.beer-feature {
  font-size: 40px;
}

h2 {
  font-size: 40px;
}

.main-content {
  width: 50%;
}

</style>