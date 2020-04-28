<template>
<section class="section">
  <div class="beer-reviews">
    <div class="header">
      <h2>Reviews <span>({{reviews.length}})</span></h2>
      <a href="#" class="add-review" v-on:click="addReview()">
        <i class="far fa-address-card"></i> Add Review
      </a>
    </div>
    <div class="review" v-for="review in reviews" v-bind:key="review.review_id">
      <div class="review-left">
     <!-- try to add beer image? -->
        <div class="review-actions">
          <a href="#" class="delete-review" v-on:click="deleteReview(review.review_id)">
            <i class="far fa-trash-alt"></i> Delete
          </a>
        </div>
      </div>
      <div class="review-info">
        <h2>{{review.subject}}</h2>
        <span>{{review.username}} | {{formatDate(review.createdAt)}}</span>
        <h3>{{review.beer_name}}</h3>
        <h4>{{review.rating}}</h4>
        <p class="feedback">{{review.review}}</p>
      </div>
    </div>
  </div>


  <div id="register">
  <form class="form-register" @submit.prevent="reviews">
    <h1 class="h3 mb-3 font-weight-normal" id="review">Submit a Beer Review</h1>
    
    <create-review v-if="showCreate"></create-review>
     <list-reviews v-else v-on:addReview="showCreate = true"></list-reviews>
    <div class="alert alert-danger" role="alert" v-if="reviewErrors">
      There were problems submitting your review.
      </div>
<main class="is-size-20 has-text-weight-semibold box has-text-centered text-box main-content">
    <div class="field is-center" id="review">
  <label class="label"><strong>Review Title:</strong></label>
  <div class="control">
    <input v-model="review.subject" class="input" type="text" placeholder="Text input" required autofocus/>
  </div>
</div>
<div class="field is-center" id="review">
  <label class="label"><strong>Beer:</strong></label>
    <div class="select">
      <select required v-model="review.beer_name">


        <option style="font-weight: bold;">--ARS--</option>
        <option>Short Bursts</option>
        <option>Zwilinger 64</option>
        <option>Antique'n Pale Ale</option>
        <option>Chasing The Whale Double IPA</option>
        <option>Wayne's Pale Ale</option>
        <option>FUMUS Smoked Black Ale</option>
        <option>Grinding Teeth IPA</option>
        <option style="font-weight: bold;">--Crime and Punishment--</option>
        <option>Space Race IPA</option>
        <option>Ghost Station Berliner Weisse</option>
        <option>Pretend Winter Happened Imperial Stout</option>
        <option>Optimistic Optometrist</option>
        <option>Vandal Vacation IPA</option>
        <option style="font-weight: bold;">--Dock Street--</option>
        <option>Dock Street King Juice</option>
        <option>Imperial Red Ale</option>
        <option>Prince Myshkin's Russian Imperial Stout</option>
        <option>Man Full Of Trouble</option>
        <option>Amber Ale</option>
        <option>Golden IPA</option>
        <option>Bean-2-Bean Espresso Stout</option>
        <option>Rye IPA</option>
        <option>Bottle-Conditioned Wild King</option>
        <option style="font-weight: bold;">--Evil Genius--</option>
        <option>There’s No Crying in Baseball Mango IPA</option>
        <option>Purple Monkey Dishwasher Chocolate Peanutbutter Porter</option>
        <option>Stacy’s Mom Citra IPA </option>
        <option>#Adulting Guava IPA</option>
        <option>I’ll Have What She’s Having Chocolate Hazelnut Imperial Stout</option>
        <option>Santa! I Know Him!</option>
        <option>#ICantEven Watermelon Blonde Ale</option>
        <option>New Phone Who Dis? Caramel Macchiato Porter</option>
        <option style="font-weight: bold;">--Love City--</option>
        <option>Love City Lager American Lager</option>
        <option>Unity IPA American IPA</option>
        <option>Sylvie Stout Oatmeal Stout</option>
        <option>Eraserhood Hazy IPA</option>
        <option>Tart Beats Plum Sour</option>
        <option>Totally Wired Brown Ale</option>
        <option>Deep Cut Pilsner</option>
        <option>Generator Wheat </option>
        <option style="font-weight: bold;">--Original 13 Ciderworks--</option>
        <option>Sir Charles Original Semi-Dry</option>
        <option>Sir Charles Deep Blueberry Sea Semi-Dry</option>
        <option>Sir Charles Strawberry Valkyrie</option>
        <option>Atacama Bone Dry English Dry</option>
        <option>Atacama Hopped Hopped Dry</option>
        <option>Sir Charles Ol’ Scrumpy</option>
        <option>Sir Charles Irish Scrumpy</option>
        <option style="font-weight: bold;">--Philadelphia Brewing Co--</option>
        <option>Harvest From the Hood Wet Hopped Ale</option>
        <option>Newbold IPA</option>
        <option>Joe Coffee Porter</option>
        <option>Rowhouse Red Philly Style Ale</option>
        <option>Kenzinger</option>
        <option>Walt Wit</option>
        <option>Working Cat Pale Ale</option>
        <option>Yous Gotta Gose</option>
        <option style="font-weight: bold;">--Separatist--</option>
        <option>Classic Cream Ale</option>
        <option>PineApple Smoosh Smoothie IPA</option>
        <option>Good Good Doulbe IPA</option>
        <option>Sketches of Cascade Wild Pale Ale</option>
        <option>Jung Love German-style Kellerbier</option>
        <option style="font-weight: bold;">--Tired Hands--</option>
        <option>Alien Church</option>
        <option>Helles Other People: Helles Lager</option>
        <option>Sunny Day Comfy and Creamy</option>
        <option>Austere Modular</option>
        <option>HopHands</option>
        <option>Ourison</option>
        <option>Trendler Schwarzbier</option>
        <option>Nothing</option>
        <option>PUNGE</option>
        <option>Banana Split Double Milkshake IPA</option>
        <option style="font-weight: bold;">--Yards--</option>
        <option>Philthy Unfiltered Hazy IPA</option>
        <option>Loyal Lager</option>
        <option>Philadelphia Pale Ale</option>
        <option>Brawler English Mild Ale</option>
        <option>American IPA</option>
        <option>Love Stout</option>
        <option>Pynk Sparkling Tart Berry Ale</option>
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
    <button class="button is-success" v-bind:disabled="!isValidForm" v-on:click="saveReview">Submit</button>
  </div>
  <div>
    <button class="button is-link">Cancel</button>
  </div>
  </div>
 </main>
</form>
</div>
 </section>
</template>

<script>
//import CreateReview from "../components/CreateReview";
//import ListReviews from "../components/ListReviews";
import moment from 'moment';

export default {
  name: "Reviews",
  props: {
    apiURL: String
  },
  data() {
    return {
      reviews: [],
    };
  },
  methods: {
    addReview() {
     this.$emit('addReview')
    },
    deleteReview(review_id) {
      fetch(`${this.apiURL}/reviews/${review_id}`, {
        method: 'DELETE'
      })
        .then(response => {
        if(response.ok){
          const index = this.reviews.map(review => review.review_id).indexOf(review_id);
          this.reviews.splice(index,1);
        }
      })
      .catch(err => console.error(err));
    },
   formatDate(d) {
      return moment(d, 'YYYY-MM-DD h:mm:ss a').format('MMMM Do YYYY, h:mm:ss A');
    }
  },
  created() {
    fetch(`${this.apiURL}/reviews`)
    .then(response => {
      return response.json();
    })
    .then(apiReviews => {
      this.reviews = apiReviews;
    })
    .catch(err => console.log(`Error fetching reviews ${err}`));
  },
   // i saved this chunk of code in a note
}
</script>

<style scoped>
.header {
  display: flex;
  border-bottom: 1px solid #ccc;
}
h2 {
  border:none;
}
h2 span {
  font-size:14px;
}
a.add-review {
  display: block;
  margin-top:7px;
  margin-left:auto;
  text-decoration: none;
  border:none;
  color:#4EADEA;
}
.review {
  display: flex;
  margin: 20px;
  border-bottom: 1px solid #ccc;
}
.review-left {
  margin-right: 20px;
}

#review {
  text-align: center;
}

.link-text {
color: blue;
	font-size: 14px;
}

a.back {
  display: block;
  margin-top: 7px;
  margin-left: auto;
  text-decoration: none;
  border: none;
  color: #4eadea;
}

.link-text:hover {
  text-decoration:underline;
}

.text-box {
  background-color: #f2f2f2;
  opacity: 0.92;
  width: 35vw;
}

section {
  align-content: center;
  justify-content: center;
  padding: 4vw;
  
}

.main-content {
margin-left: 28.5vw;
justify-content: center;
padding: 4vw;
min-width: 225px;
}
.feedback {
  margin-top: 10px;
  line-height: 1.7;
  padding-bottom: 15px;
}
.review-actions {
  margin-top: 20px;
  margin-left: 10px;
  text-align: center;
}
.review-actions a, .review-actions a:visited {
  display: block;
  color:black;
  margin-top:10px;
  text-decoration: none;
  color:#4EADEA;
}
.review-actions a:hover {
  color:rgb(0, 116, 189);
}

</style>