<template>
<div>
    <div class="header">
      <h2>Reviews <span>({{reviews.length}})</span></h2>
      <a href="#" class="add-review" v-on:click="$emit('addReview')">
        <i class="far fa-address-card"></i> Add Review
      </a>
    </div>
    <div class="review" v-for="review in reviews" :key="review.id">
      <div class="review-left">
        <img :src="review.avatar" class="avatar"/>
        <div class="review-actions">
          <a href="#" class="edit-review" v-on:click="editReview(parseInt(review.id))">
            <i class="far fa-edit"></i> Edit 
          </a>
          <a href="#" class="delete-review" v-on:click="deleteReview(review.id)">
            <i class="far fa-trash-alt"></i> Delete 
          </a>
        </div>
      </div>
      <div class="review-info">
        <h2>{{review.title}}</h2>
        <span>{{review.name}} | {{formatDate(review.createdAt)}}</span>
        <p class="feedback">{{review.review}}</p>
      </div>
    </div>
</template>

<script>
export default {
    
}
data() {
    return {
      showCreate: false,
      reviews: []
    };
  }
</script>

