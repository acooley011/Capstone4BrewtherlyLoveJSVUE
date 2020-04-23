
<template>
  <div class="admin"><h1>Administrator</h1>
   <hr />
  <div class='container'>
    <h2>Add New Brewery</h2>  
    <div class='form'>
      <form v-on:submit.prevent="saveBrewery">
         <div class="form-group">
           <label for="name">Brewery Name: </label>
            <input
              type="text"
              class="form-control"
              id="name"
              placeholder="Enter brewery name"
              v-model="brewery.name"
            />
         </div>  
         <div class="form-group">
           <label for="brewer">Brewer Userame: </label>
            <input
              type="text"
              class="form-control"
              id="brewer"
              placeholder="Enter brewer username"
              v-model="brewery.brewer"
            />
         </div>   
         <div class="form-group">
           <label for="neighborhood">Neighborhood: </label>
             <select class="form-control" id="neighborhood" v-model="brewery.neighborhood">
              <option>North</option>
              <option>South</option>
              <option>West</option>
              <option>East</option>
            </select>
         </div>   

        <button type="submit" class="btn btn-primary">Add New Brewery</button>
      </form>
       <hr />
      <div class="confirmation">
        <h3>New Brewery Information</h3>
        <p>Title: {{ brewery.name }}</p>
        <p>Reviewer: {{ brewery.brewer }}</p>
        <p>Rating: {{ brewery.neighborhood }}</p>
      </div>

    </div>    
 </div>
 </div>
</template>

<script>
export default {
  name: 'admin',

  data () {
    return {
      brewery: {
        name:   '',
        brewer: '',
        neighborhood: ''
      }
    };
  },
  methods: {
    saveBrewery(){
       // note that JSON.stringify is a built in function which takes a javascript object
      // and turns it into a json string!
      const json = JSON.stringify(this.brewery);
      //TODO issue a fetch request to submit the data to the server
      console.log(`We submitted the data to the server: ${json}`);
    }
  }
}
</script>

<style scoped>

</style>

