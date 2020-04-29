<template>
<div class="column">
  <div class="column">
    <img src="../assets/images/brewbannermockup.png" width="100%" /><br/><br/>
    <div class="columns is-mobile">
      <div class="column">
        <main id="main-content" class="is-size-4 has-text-weight-semibold box has-text-centered text-box">
        <p><strong>Welcome!</strong></p>
        <ul>
          <li>Fans of craft beer have a lot to be excited about in the Philadelphia area. The region is experiencing a surge of craft brewery openings and expansions, including new taprooms, craft breweries, and beer gardens. We keep track of them so you don't have to!</li>
        <!--<li>• We keep track of all the breweries in Philadelphia so you don't have to!</li>
        <li>• Browse our website and you will find a list of all the breweries and cider distilleries in Center City and surrounding neighborhoods.</li>
        <li>• Make an account as a beer lover and you will be able to review any beers you try, along with interact with fellow beer lovers.</li>
        <li>• Check out the review page for a list of all the reviewed beers sorted by average rating.</li> 
        <li>• Find out which breweries and beers are most popular at a glance.</li>
        <li>• Own a brewery? Make a profile page if we don't already have one and keep track of your delicious brew stock for the public to see.</li>
        <li>• Respond to customer questions on the message board too! Philadelphia has so many great places to go and now we can drink up together in the City of Brew-therly Love.</li>
        -->
        </ul>
        </main>
        <router-link to="/brewery-list"><img src="../assets/images/brewtherlyBREWERIES.png" width="100%" /></router-link><br/> 
        <router-link to="/beer-lover"><img src="../assets/images/brewtherlyREVIEWS.png" width="100%" /></router-link><br>
        <router-link to="/login"><img src="../assets/images/brewtherlyLOGIN.png" width="50%" /></router-link>
        <router-link to="/register"><img src="../assets/images/brewtherlyREGISTER.png" width="50%" /></router-link>
      <section id="about" class="is-size-4 has-text-weight-semibold box has-text-centered text-box">
        <ul>
          <li> Login or Register to leave a review!</li>
        </ul>
      </section>
      </div>
      <div class="column">
        <router-link to="/brewery-list"><img src="../assets/images/brewmap.png" width="100%" /></router-link>
      </div>
    </div>
      <main class="is-size-4 has-text-weight-semibold box has-text-centered text-box">
    <p><strong>TODAY'S FEATURE</strong></p><br/>
    <div class="columns is-mobile">
      <div>
       <router-link to="/brewery"><img src="../assets/images/Breweries/breweryYards.png" width="500vw" style="margin-right: 15vw;"/></router-link>
      </div>
      <div class="text-box">
       <p style="width: 25vw; font-size: 16px; font-weight:bold; ">TAPROOM PICKUP <br/>• Yards is proud to offer curbside and contactless pickup.<br/>• Curbside or contactless pickup are available 11:30am - 8pm daily. <br/>• If you have placed an order for pickup, your order will be ready 15 minutes after placing it, you will also receive an email notification when your order is ready.</p>
        <p style="width: 25vw; font-size: 16px; font-weight: bold;">YARDS DELIVERS <br/>• Delivery is currently available!<br/>• We will do our very best to deliver same day. The earlier in the day you order the better the chances we’ll be able to get to you that day. All orders will be fulfilled by next day at the latest. If you place your order the night before next day is a sure bet.<br/>• Delivery window - 11:30am - 8pm, 7 days per week. More details at bottom of page.</p>
      </div>
    </div>
    </main>
  </div>
</div>
</template>

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