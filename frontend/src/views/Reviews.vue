<template>
<main class="main" >
  
    <h1 style="text-align: center;"><strong>Reviews</strong></h1><br/>
  <!-- add to main if we ever get this fetch to work v-if="reviewDetails !== null" -->
<!-- this chunk of code was saved -->
  <div class="is-size-4 has-text-weight-semibold box has-text-centered text-box"
      v-for="review in reviewList.reviews" v-bind:key="review.id">
    
    <div class="columns">
         <div>
      <img :src="review.imgUrl"/>
      </div><br/>
      <ul>
      <li><h3><strong>Beer:</strong> {{review.beerName}}</h3></li><br/>
      <li><h2><strong>Title:</strong> {{review.subject}}</h2></li><br/>
      <li><strong>Rating:</strong> {{review.rating}} stars</li><br/>
      <li><h5>{{review.username}} | {{review.date}}</h5></li>
      </ul>
      <ul>
     <li><div id="review-info" class="text-box">
        <p style="font-size: 18px; font-weight: bold;">{{review.review}}</p>
      </div></li><br/>
      </ul>
      <div>
      
      </div>
      
    </div>
    </div>
    </main>
</template>

<script>

import auth from "../auth.js";

export default {
  name: 'reviews',

  data(){
    return {
      reviewList: null,
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
    fetch(`${process.env.VUE_APP_REMOTE_API}/api/reviews/`, options) 
    .then(response => response.json())
    .then(details => {
      this.reviewList = details;
      this.review = this.reviewList.review;
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
margin-right: 18vw;
}

p {
  width: 15vw;
  font-size: 14px;
  padding-top: 6vw;
  padding-bottom: 2vw;
  margin-left: 20vw;
}

img {
  max-width: 25vw;
  min-width: 25vw;

}

</style>