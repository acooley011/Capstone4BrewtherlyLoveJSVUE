<template>
<section class="section">
  <div id="register">
  <form class="form-register" @submit.prevent="reviews">
    <h1 class="h3 mb-3 font-weight-normal" id="review">Sumbit a Beer Review</h1>
    <create-review v-if="showCreate"></create-review>
     <list-reviews v-else v-on:addReview="showCreate = true"></list-reviews>
    <div class="alert alert-danger" role="alert" v-if="reviewErrors">
      There were problems submitting your review.
      </div>
   

<main class="is-size-20 has-text-weight-semibold bos has-text-centered text-box main-content">
    <div class="field is-center" id="review">
  <label class="label"><strong>Review Title:</strong></label>
  <div class="control">
    <input class="input" type="text" placeholder="Text input">
  </div>
</div>
<div class="field is-center" id="review">
  <label class="label"><strong>Beer</strong></label>
    <div class="select">
      <select>
        <option>Select dropdown</option>
        <option>With options</option>
        <option>With options</option>
        <option>With options</option>
        <option>With options</option>
        <option>With options</option>
        <option>With options</option>
        <option>With options</option>
        <option>With options</option>
        <option>With options</option>
        <option>With options</option>
        <option>With options</option>
        <option>With options</option>
        <option>With options</option>
        <option>With options</option>
        <option>With options</option>
      </select>
    </div>
  </div>
<div class="field is-center" id="review">
  <label class="label">Review:</label>
  <div class="control">
    <textarea class="textarea" placeholder="Your text here"></textarea>
  </div>
</div>
<br/>
<div class="field is-grouped is-grouped-centered" id="review">
  <div class="control">
    <button class="button is-success">Submit</button>
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