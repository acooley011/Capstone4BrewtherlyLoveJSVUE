<template>
<div class="column">
  <div class="column">
    <img src="../assets/images/brewbannermockup.png" width="100%" /><br/><br/>
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
      <main class="is-size-4 has-text-weight-semibold box has-text-centered text-box">
    <p><strong>TODAY'S FEATURE</strong></p><br/>
    <div class="columns is-mobile">
      <div>
       <img src="../assets/images/Breweries/breweryYards.png" width="500vw" style="margin-right: 15vw;"/>
      </div>
      <div class="text-box" width="25vw;">
        <p style="width: 25vw">Yards has been brewing Philly's beer since 1994. We’ve grown from a garage-sized operation in Manayunk all the way up to our current location at 500 Spring Garden Street in Northern Liberties. And we couldn't have done it without your support through the years. Our beers always have and always will be brewed, bottled, kegged, and canned for the hard working people of Philadelphia and beyond.</p>
        <p style="width: 25vw">You can FIND YARDS throughout the Mid-Atlantic Region in Pennsylvania, New Jersey, Delaware, and Maryland. Or you can visit our TAPROOM to go on a BREWERY TOUR and try specialty beers only available at Yards. PHILADELPHIA PALE ALE and BRAWLER, both nationally recognized ales, lead our balanced portfolio of quality, handcrafted beers including nine year-round offerings and several seasonal and limited releases.</p>
      </div>
    </div>
    </main>
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

.text-box {
  opacity: 0.92;
  font-size: 13px;
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