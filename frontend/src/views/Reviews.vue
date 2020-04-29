<template>
<main class="main" >
  <!-- add to main if we ever get this fetch to work v-if="reviewDetails !== null" -->
<!-- this chunk of code was saved -->
      <div class="is-size-4 has-text-weight-semibold box has-text-centered text-box"
      v-for="review in reviews.reviewList" v-bind:key="review.id">
    
    
    <h1><strong>Reviews</strong></h1><br/>
    <div class="columns">
      <h2>{{review.subject}}</h2>
      <h3>{{review.beerName}}</h3>
      <p>{{review.rating}}</p>
      <div id="review-info" class="text-box">
        <p>{{review.review}}</p>
      </div>
      <div>
      <h5>{{review.username}}</h5>
      <h5>{{review.date}}</h5>
      </div>
    </div>
    </div>
    </main>
</template>

<script>

import auth from "../auth.js";

export default {
  name: 'review-list',

  data(){
    return {
      reviews: null,
      reviewId: 1, //TODO during the create method, get the review id out of the url, see catalog HW
    };
  },

  methods: {
    fetchReviews(){
      const options = {
        method: "GET",
        headers:{
          "Authorization" : `Bearer ${auth.getToken()}`
          //If you are posting/putting want to add "Content-Type: application/json" -> setting the content type when sending content
        },
        //If doing post/put then body: json.stringify would go here
      };
    fetch(`${process.env.VUE_APP_REMOTE_API}/api/reviews/`,options) 
    .then(response => response.json())
    .then(details => {
      this.reviews = details;
      this.review = this.reviews.review;
      })
    .catch(err => console.error(err));
    }

  },

  created(){
    
      this.fetchReviews(); 
  }

  
}
</script>

<style scoped>

#review-list {
  text-align: center;
 
}

#review-info {
font-size: 14px;
}

p {
  width: 25vw;
  font-size: 14px;
  padding-bottom: 2vw;
  margin-left: 20vw;
}

img {
  max-width: 50vw;
  min-width: 30vw;

}

</style>