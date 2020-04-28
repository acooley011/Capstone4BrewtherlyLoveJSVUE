<template>
  <div class="beer" >
    <save-review 
      v-if="showSaveReviewForm"
      v-on:showReviews="showReviews"
      v-bind:apiURL="API_URL"
      v-bind:review_id="reviewID"
    />
    <reviews
      v-if="!showSaveReviewForm"
      v-bind:apiURL="API_URL"
      v-on:addReview="addReview"
      class="beer-reviews"
    />
  </div>
</template>

<script>
import SaveReview from "@/components/SaveReview"
import Reviews from "@/components/Reviews";

export default {
  components: {
    SaveReview,
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
      this.showSaveReviewForm = true;
    },
    editReview(id) {
      this.reviewID = id;
      this.showSaveReviewForm = true;
    },
    showReviews() {
      this.showSaveReviewForm = false;
      this.reviewID = 0;
    }
  }
};
</script>

<style>
.beer {
  display: grid;
  grid-template-areas:
    "beer-image beer-info"
    "beer-reviews beer-reviews"
    "beer-add beer-add";
  grid-template-columns: 300px auto;
}
.beer-image {
  grid-area: beer-image;
}
.beer-image img {
  max-width: 280px;
  box-shadow: 2px 2px rgb(0, 0, 0, 60%);
  border: 1px solid rgba(0, 0, 0, 0.6);
}
.beer-info {
  grid-area: beer-info;
}
.beer-reviews {
  grid-area: beer-reviews;
  margin-top: 30px;
}
.description {
  margin-top: 10px;
  line-height: 1.5;
}
</style>
