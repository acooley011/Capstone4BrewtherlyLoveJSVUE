<template>
<section class="section">
  <div id="register">
  <form class="form-register" @submit.prevent="reviews">
    <h1 class="h3 mb-3 font-weight-normal" id="review">Sumbit a Beer Review</h1>
    <a href="#" class="back" v-on:click="backToReviews()">
        <i class="fas fa-list-ul"></i> Return to Reviews
      </a>
    <create-review v-if="showCreate"></create-review>
     <list-reviews v-else v-on:addReview="showCreate = true"></list-reviews>
    <div class="alert alert-danger" role="alert" v-if="reviewErrors">
      There were problems submitting your review.
      </div>
   

<main class="is-size-20 has-text-weight-semibold bos has-text-centered text-box main-content">
    <div class="field is-center" id="review">
  <label class="label"><strong>Review Title:</strong></label>
  <div class="control">
    <input v-model="review.subject" class="input" type="text" placeholder="Text input" required autofocus/>
  </div>
</div>
<div class="field is-center" id="review">
  <label class="label"><strong>Beer:</strong></label>
    <div class="select">
      <select required v-model="review.beer">


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
import CreateReview from "../components/CreateReview";
import ListReviews from "../components/ListReviews";


export default {
  name: "Reviews",
  props: {
    apiURL: String
  },
  data() {
    return {
      review: {
        subject: '',
        beer: '',
        review: '',
      },
      reviewErrors: false,
      //showCreate: false,
     // reviews: []
    };
  },
  components: {
    CreateReview,
    ListReviews
  },
  methods: {
     backToReviews() {
      this.$emit("showReviews");
    },
    saveReview() {
      this.reviewID === 0 ? this.createReview() : this.updateReview();
    },
     createReview() {
       const fetchConfig = {
        method: 'POST',
        headers: {
          "Content-Type" : "application/json"
        },
        body: JSON.stringify(this.review)
      };

    fetch(`${this.apiURL}/reviews`, fetchConfig)
      .then(response => {
        if(response.ok) {
          this.$emit('showReviews');
        }
      })
      .catch((err) => console.error('Review creation or update error', err)); //not sure if this will work properly
  },
    updateReview() {
     const fetchConfig = {
       method: "PUT",
       headers: {
         "Content-Type" : "application/json"
     },
     body: JSON.stringify(this.review)
    };
    fetch(`${this.apiURL}/reviews/${this.reviewID}`, fetchConfig)
      .then(response => {
          if(response.ok) {
            this.$emit('showReviews');
          }
        })
        .catch(err => console.error('Recieved an error creating or updating a review', err));
    }
  },
   // i saved this chunk of code in a note
    computed: {
    isValidForm() {
      return (
        this.review.subject != '' &&
        this.review.beer != '' || '--ARS--' || '--Crime and Punishment--' || '--Dock Street--' || '--Evil Genius--' || '--Love City--' || 
        '--Original 13 Ciderworks--' || '--Philadelphia Brewing Co--' || '--Separatist--' || '--Tired Hands--' || '--Yards--' &&
        this.review.reviewText != ''
      );
    },
    pageTitle() {
      return this.reviewID === 0 ? "Add Review" : "Edit Review - " + this.review.title;
    }
  },
  created() {
    if(this.reviewID === 0){
      return;
    }
   // url: 'https://localhost:8081/reviews'; ???
    fetch(`${this.apiURL}/reviews/${this.reviewID}`)
      .then(response => {
        return response.json();
      })
      .then( review => {
        this.review = review;
      })
      .catch(err => console.error(err));
  }
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
}

.main-content {
margin-left: 29.5vw;
padding: 4vw;


}

</style>