
<template>

  <div class="admin"><h1>Administrator</h1>
  <section class="section">
    <main class="is-size-20 has-text-weight-semibold bos has-text-centered text-box main-content">
  <div class='container'>
    <h2><strong>Add New Brewery</strong></h2><br/>
    <div class='form'>
      <form v-on:submit.prevent="saveBrewery">
         <div class="form-group">
           <label for="name">Brewery Name: </label><br/>
            <input
              type="text"
              class="input"
              id="name"
              placeholder="Enter brewery name"
              v-model="brewery.name"
              required
              autofocus/>
         </div>  
         <br/>
         <div class="form-group">
           <label for="brewer">Brewer Userame: </label><br/>
            <input
              type="text"
              class="input"
              id="brewer"
              placeholder="Enter brewer username"
              v-model="brewery.brewer"
              required
            />
         </div>      
          <br/>
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
        <h3><strong> Brewery Information</strong></h3>
        <p>Title: {{ brewery.name }}</p>
        <p>Brewer: {{ brewery.brewer }}</p>
      </div>

    </div>    
    
 </div>
 
 </main>
 </section>

 <br/>
 
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
        brewer: ''
      }
    };
  },

  methods: {
   createBrewery() {
      fetch(`${process.env.VUE_APP_REMOTE_API}/admin`,{
        method: 'POST',
        headers: {
          "Content-Type": "application/json",
          "Authorization": `Bearer ${auth.getToken()}`
        },
        body: JSON.stringify(this.brewery)
      })
      .then((response) => {
        if (response.ok) {
        this.$router.push({ path: '/admin', query: { registration: 'success' } });
        }
      })
      .then((err) => console.error(err));
    },

    saveBrewery(){
      this.breweryId === 0 ? this.createBrewery() : this.updateBrewery();
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
          this.brewery.splice();
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

main {
  align-content: center;
  justify-content: center;
  
}

.admin {
  text-align: center;
}

section {
  align-content: center;
  text-align: center;
  justify-content: center;
  background-color: #f2f2f2;
  opacity: 0.92;
  width: 35%;
  margin-left: 32vw;
}

.container {
  align-content: center;
  justify-content: center;
}

</style>
