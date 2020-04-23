<template>
  <div class="brewer"><h1>Brewer</h1>
    <button type="submit">View Brewery Information</button>

  <h2>Beer List</h2>
  <div class="form">
    <form v-on:submit.prevent="saveBeer">
      <div class="form-group">
           <label for="name">Beer Name: </label>
            <input
              type="text"
              class="form-control"
              id="name"
              placeholder="Enter beer name"
              v-model="beer.name"
            />
         </div> 

        <div class="form-group">
           <label for="type">Type: </label>
             <select class="form-control" id="type" v-model="beer.type">
              <option>Pilsner</option>
              <option>Stout</option>
              <option>Porter</option>
              <option>Cider</option>
              <option>IPA</option>
              <option>Saison</option>
              <option>Ale</option>
              <option>Lager</option>
              <option>Sour</option>
              <option>Wheat</option>
              <option>Semi-Dry Cider</option>
              <option>Hopped-Dry Cider</option>
              <option>English-Dry Cider</option>
            </select>
         </div>    

         <div class="form-group">
           <label for="name">ABV: </label>
            <input
              type="text"
              class="form-control"
              id="name"
              placeholder="Enter ABV"
              v-model="beer.abv"
            />
         </div>

         <div class="form-group">
           <label for="name">Description: </label>
            <input
              type="text"
              class="form-control"
              id="name"
              placeholder="Enter description"
              v-model="beer.description"
            />
         </div> 

    <button type="submit">Add A Beer to Beer List</button>

    <button type="submit">Update Brewery Information</button>
    <button type="submit">Remove A Beer from Beer List</button>
    </form>
  </div>
  </div>
</template>

<script>
export default {
  name: 'brewer',
   data () {
    return {
      beer: {
        name:   '',
        abv: '',
        type: '',
        description: '',
      }
    };
  },
  methods: {
    saveBeer(){
       // note that JSON.stringify is a built in function which takes a javascript object
      // and turns it into a json string!
      const json = JSON.stringify(this.beer);
      //TODO issue a fetch request to submit the data to the server
      console.log(`We submitted the data to the server: ${json}`);
    },
    //TODO add logic for updating/deleting beer methods
    updateBeer(){},

    deleteBeer() {}


  }
}

</script>

<style scoped>

</style>