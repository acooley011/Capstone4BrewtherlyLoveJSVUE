<template>
  <div class="review" >
   
    <create-review 
      v-if="showAddReviewForm"
      v-on:showReviews="showReviews"
      v-bind:apiURL="API_URL"
      v-bind:reviewID="reviewID"
    />
    <reviews
      v-if="!showAddReviewForm"
      v-bind:apiURL="API_URL"
      v-on:addReview="addReview"
      v-on:editReview="editReview($event)"
      class="reviews"
    />
  </div>
</template>

<script>
import CreateReview from "@/components/CreateReview"
import Reviews from "@/views/Reviews";

export default {
  components: {
    CreateReview,
    Reviews
  },
  data() {
    return {
      API_URL: "",
      showAddReviewForm: false,
      reviewID: 0,
      reviews: [],
    }
  },
  methods: {
    addReview() {
      this.showAddReviewForm = true;
    },
    editReview(id) {
      this.reviewID = id;
      this.showAddReviewForm = true;
    },
    showReviews() {
      this.showAddReviewForm = false;
      this.reviewID = 0;
    }
  }
};
</script>

<style>
.Review {
  display: grid;
  grid-template-areas:
    "review-image review-info"
    "review-reviews review-reviews"
    "review-add review-add";
  grid-template-columns: 300px auto;
}
.Review-image {
  grid-area: review-image;
}
.Review-image img {
  max-width: 280px;
  box-shadow: 2px 2px rgb(0, 0, 0, 60%);
  border: 1px solid rgba(0, 0, 0, 0.6);
}
.review-info {
  grid-area: review-info;
}
.review-reviews {
  grid-area: review-reviews;
  margin-top: 30px;
}
.description {
  margin-top: 10px;
  line-height: 1.5;
}
</style>
