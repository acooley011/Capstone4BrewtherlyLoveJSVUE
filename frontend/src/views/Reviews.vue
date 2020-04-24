<template>
  <div class="beer-reviews">
    <create-review v-if="showCreate"></create-review>
    <list-reviews v-else v-on:addReview="showCreate = true"></list-reviews>
    
  </div>
</template>

<script>
import CreateReview from "../components/CreateReview";
import ListReviews from "../components/ListReviews";


export default {
  name: "ProductReviews",
  props: {
    apiURL: String
  },
  data() {
    return {
      showCreate: false,
      reviews: []
    };
  },
  components: {
    CreateReview,
    ListReviews
  },
  methods: {
    editReview(id) {
      this.$emit('editReview',id)
    },
    deleteReview(id) {
      fetch(`${this.apiURL}/${id}`,{
        method: 'DELETE',
        headers: {
          "Content-Type": "application/json"
        },
        body: JSON.stringify(this.review)
      })
      .then((response) => {
        if(response.ok) {
          // the review has been removed from the server but we need to remove it from the local array
          // if you were to refresh the page it would be gone but that isn't very SPA like
          const index = this.reviews.map(review => review.id).indexOf(id);
          this.reviews.splice(index,1);
        }
      })
      .catch((err) => console.error(err));
    },
    formatDate(d) {
      let current_datetime = new Date(d)
      return (current_datetime.getMonth() + 1) + "/" + current_datetime.getDate() + "/" + current_datetime.getFullYear() + " " + current_datetime.getHours() + ":" + current_datetime.getMinutes();
    }
  },
  created() {
    // load the reviews
    fetch(this.apiURL)
      .then((response) => {
        return response.json();
      })
      .then((reviews) => {
        this.reviews = reviews;
      })
      .catch((err) => console.error(err));
  }
};
</script>

<style scoped>

</style>