
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

        <button type="submit" v-on:click="saveBrewery">Add New Brewery</button>

        <div>
          <a href="#" v-on:click="editBrewery(parseInt(brewery.id))">
            <i></i> Edit 
          </a>
          <a href="#"  v-on:click="deleteBrewery(brewery.id)">
            <i ></i> Delete 
          </a>
        </div>



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
import auth from '../auth.js'

export default {
  name: 'admin',
  props: {
    apiURL: String,
    breweryId: Number
  },

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
   createBrewery() {
      fetch(this.apiURL,{
        method: 'POST',
        headers: {
          "Content-Type": "application/json",
          "Authorization": `Bearer ${auth.getToken()}`
        },
        body: JSON.stringify(this.brewery)
      })
      .then((response) => {
        if(response.ok) {
          this.$emit('showBreweries');
        }
      })
      .catch((err) => console.error(err));
    },

    saveBrewery(){
      this.breweryId === 0 ? this.createBrewery() : this. updateBrewery();
    },

    updateBrewery(id) {
      this.$emit('updateBrewery',id)
    },

    deleteBrewery() {
      fetch(`${this.apiURL}/${this.breweryId}`,{
        method: 'DELETE',
        headers: { 
          "Authorization": `Bearer ${auth.getToken()}`
        }
      }

      )
      .then((response) => {
        if( response.ok ) {
          this.brewery.splice(index,1);
        }
      })
      .catch((err) => console.error(err));
    },
  
  computed: {
      created() {
        if( this.breweryId != 0 ) {
          fetch(this.apiURL + '/' + this.breweryId)
            .then((response) => {
          return response.json();
        })
        .then((brewery) => {
          this.brewery = brewery;
        })
        .catch((err) => console.error(err));
      }
      }
  }
  }
}
  
</script>

<style scoped>

</style>
