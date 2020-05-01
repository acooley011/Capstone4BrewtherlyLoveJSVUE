
<template>
<section class="section">
  <!-- add a way to read and print their username in the welcome -->
    <div class="beer-lover">
      <h1 id="review">Welcome Beer Lover</h1>
 </div>
  
  <div id="review">
  <form class="form-register" @submit.prevent="addReview">
    <div class="alert alert-danger" role="alert" v-if="reviewErrors">
      There were problems submitting your review.
      </div>

<main class="is-size-20 has-text-weight-semibold box has-text-centered text-box main-content">
  <strong><h3 style="font-weight: bold; text-decoration: underline;" id="review">Submit a Beer Review</h3></strong><br/>
    <div class="field is-center" id="review">
  <label class="label"><strong>Review Title:</strong></label>
  <div class="form-control">
    <input v-model="review.subject" class="input" type="text" placeholder="Text input" required autofocus/>
  </div>
  <label for="rating" class="label"><strong>Rating:</strong></label>
  <div class="select">
  <select required v-model="review.rating">
    <option>1</option>
    <option>2</option>
    <option>3</option>
    <option>4</option>
    <option>5</option>
    </select>
  </div>
</div>
<div class="field is-center" id="review">
  <label class="label"><strong>Beer:</strong></label>
    <div class="select">
      <select required v-model="review.beerName">


        <option style="font-weight: bold;">--ARS--</option>
        <option>Good Grape IPA</option>
        <option>Short Bursts</option>
        <option>Showy Spikes Saison</option>
        <option>Speculoos Stout</option>
        <option>Zwillinger</option>
        <option>FUMUS Smoked Black Ale</option>
        <option style="font-weight: bold;">--Crime and Punishment--</option>
        <option>Space Race IPA</option>
        <option>Ghost Station</option>
        <option>Pretend Winter Happened Stout</option>
        <option>Optimistic Optometrist</option>
        <option>Vandal Vacation</option>
        <option style="font-weight: bold;">--Dock Street--</option>
        <option>Dock Street King Juice</option>
        <option>IMPERIAL RED ALE</option>
        <option>Prince Myshkins Russian Imperial Stout</option>
        <option>Man Full Of Trouble</option>
        <option>Amber Ale</option>
        <option>GOLDEN IPA</option>
        <option>BEAN2BEAN ESPRESSO STOUT</option>
        <option>RYE IPA</option>
        <option>BOTTLE CONDITIONED WILD KING</option>
        <option style="font-weight: bold;">--Evil Genius--</option>
        <option>There’s No Crying in Baseball</option>
        <option>Purple Monkey Dishwasher</option>
        <option>Stacy’s Mom</option>
        <option>#Adulting</option>
        <option>I’ll Have What She’s Having</option>
        <option>Santa! I Know Him!</option>
        <option>#ICANTEVEN</option>
        <option>New Phone, Who Dis?</option>
        <option style="font-weight: bold;">--Love City--</option>
        <option>Love City Lager</option>
        <option>Unity IPA</option>
        <option>Sylvie Stout</option>
        <option>Eraserhood Hazy IPA</option>
        <option>Tart Beats Plum</option>
        <option>Totally Wired</option>
        <option>Deep Cut Pilsner</option>
        <option>Generator Wheat</option>
        <option style="font-weight: bold;">--Original 13 Ciderworks--</option>
        <option>Sir Charles Original Hard Cider</option>
        <option>Sir Charles Deep Blueberry Sea</option>
        <option>Sir Charles Strawberry Valkyrie</option>
        <option>Atacama Bone Dry</option>
        <option>Atacama Hopped Dry</option>
        <option>Sir Charles Ol Scrumpy</option>
        <option>Sir Charles Irish Scrumpy</option>
        <option style="font-weight: bold;">--Philadelphia Brewing Co--</option>
        <option>Harvest from the Hood</option>
        <option>Newbold IPA</option>
        <option>Joe Coffee Porter</option>
        <option>Rowhouse Red</option>
        <option>Kenzinger</option>
        <option>Walt Wit</option>
        <option>Working Cat</option>
        <option>Yous Gotta Gose</option>
        <option style="font-weight: bold;">--Separatist--</option>
        <option>Classic Cream Ale</option>
        <option>PineApple Smoosh</option>
        <option>Deep Cut</option>
        <option>Good Good</option>
        <option>Sketches of Cascade</option>
        <option>Jung Love</option>
        <option style="font-weight: bold;">--Tired Hands--</option>
        <option>Alien Church</option>
        <option>Helles Other People</option>
        <option>Sunny Day Comfy and Creamy</option>
        <option>Austere Modular</option>
        <option>HopHands</option>
        <option>Ourison</option>
        <option>Trendler Schwarzbier</option>
        <option>Little Log Cabin</option>
        <option>We Are All Infinite Energy Vibrating At The Same Frequency</option>
        <option>Banana Split Double Milkshake IPA</option>
        <option style="font-weight: bold;">--Yards--</option>
        <option>Brawler</option>
        <option>ESA</option>
        <option>Love Stout</option>
        <option>Loyal Lager</option>
        <option>Philadelphia Pale Ale</option>
        <option>Philthy</option>
        <option>Pynk</option>
        <option>Extra Special Ale</option>
      </select>
    </div>
  </div>

<!--stars/bottles selector should go here -->

<div class="field is-center" id="review">
  <label class="label">Review:</label>
  <div class="control">
    <textarea name="review" id="reivew" cols="60" rows="10" v-model="review.review" class="textarea" placeholder="Your text here" required></textarea>
  </div>
</div>
<br/>
<div class="field is-grouped is-grouped-centered" id="review">
  <div class="control">
     <!--v-bind:disabled="!isValidForm"--> 
    <button class="button is-success" type="submit">Submit</button>
  </div>
  <div>
    <button class="button is-link">Cancel</button>
  </div>
  </div>
    <router-link :to="{ name: 'reviews' }" class="link-text"><strong>Go to Reviews</strong></router-link><br/><br/>
 </main>
</form>
</div><br/>
  <router-link :to="{ name: 'brewery-list' }"><button class="button is-link">Go to Brewery List</button></router-link>
  </section>
</template>

<script>
import auth from "../auth.js";

export default {
  name: 'addReview',
  data () {
    return {
      review: {
        subject: '',
        beerName: '',
        rating: 0,
        review: '',
        username: '',
      },
      reviewErrors: false,
    };
  },
  methods: {
    addReview() {
      fetch(`${process.env.VUE_APP_REMOTE_API}/api/beer-lover`, {
        method: 'POST',
        headers: {

         "Authorization" : `Bearer ${auth.getToken()}`,
         "Access-Control-Allow-Origin" : `*`,
          Accept: 'application/json',
          'Content-Type' : 'application/json',
          
        },
        body: JSON.stringify(this.review),
      })
      .then((response) => {
        if (response.ok) {
          this.$router.push({path: '/reviews', query: {review: 'success'} });
        } else {
          this.reviewErrors = true;
        }
      })
      .then((err) => console.error(err));
    },
  },   
};
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
  align-items: center;
  justify-content: center;
}

.main-content {
margin-left: 33vw;
min-width: 225px;
justify-content: center;
padding: 4vw;

}


</style>