
<template>
  <div class="admin"><h1>Administrator</h1>
  <section class="section">
    <main class="is-size-20 has-text-weight-semibold bos has-text-centered text-box main-content">
  <div class='container'>
    <h2><strong>Add New Brewery</strong></h2><br/>
    <div class='form'>
      <form v-on:submit.prevent="saveBrewery">
         <div class="field is-center">
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
         <div class="field is-center">
           <label for="address">Address: </label><br/>
            <input
              type="text"
              class="input"
              id="address"
              placeholder="Enter address"
              v-model="brewery.address"
              required
            />
         </div> 
 <div class="field is-center">
           <label for="city">City: </label><br/>
            <input
              type="text"
              class="input"
              id="city"
              placeholder="Enter city"
              v-model="brewery.city"
              required
            />
         </div>      
 <div class="field is-center">
           <label for="neighborhood">Neighborhood: </label><br/>
            <input
              type="text"
              class="input"
              id="neighborhood"
              placeholder="Enter neighborhood"
              v-model="brewery.neighborhood"
              required
            />
         </div>   

         <div class="field is-center">
           <label for="zip">Zipcode: </label><br/>
            <input
              type="text"
              class="input"
              id="zip"
              placeholder="Enter zipcode"
              v-model="brewery.zip"
              required
            />
         </div>  
         <div class="field is-center">
           <label for="contact">Contact Number: </label><br/>
            <input
              type="text"
              class="input"
              id="contact"
              placeholder="Enter contact"
              v-model="brewery.contact"
              required
            />
         </div>     
          <div class="field is-center">
           <label for="businessHours">Business Hour: </label><br/>
            <input
              type="text"
              class="input"
              id="businessHours"
              placeholder="Enter business hours"
              v-model="brewery.businessHours"
              required
            />
         </div> 

         <div class="field is-center">
           
           <label for="description">Description: </label><br/>
            <textarea name="description" 
              type="text"
              class="textarea"
              id="description"
              placeholder="Enter description"
              v-model="brewery.description"
              required
            />
         </div>                

        <!-- <img scr="../assets/images/Breweries/defaultbreweryimg.png" width="100%"/> -->
        



        <button class="button is-link" type="submit" v-on:click="createBrewery">Add New Brewery</button>
<!-- change to real buttons? -->
        <div>
          <a href="#" v-on:click="editBrewery(parseInt(brewery.id))">
            <i></i> Edit
          </a>
          <a href="#"  v-on:click="deleteBrewery(brewery.id)">
            <i ></i> Delete 
          </a>
        </div>
 


      </form>

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
  name: 'createBrewery',
  data () {
    return {
      brewery: {
        name:   '',
        address: '',
        city: '',
        neighborhood: '',
        zip: '',
        contact: '',
        businessHours: '',
        description: '',
        breweryLogoUrl: ''
      }
    };
  },

  methods: {
   createBrewery() {
      fetch(`${process.env.VUE_APP_REMOTE_API}/api/admin`,{
        method: 'POST',
        headers: {
          "Content-Type": "application/json",
          "Access-Control-Allow-Origin" : `*`,
          Accept: 'application/json',
          "Authorization": `Bearer ${auth.getToken()}`
        },
        body: JSON.stringify(this.brewery)
      })
      .then((response) => {
        if (response.ok) {
        this.$router.push({ path: '/brewery-list', query: { brewery: 'success' } });
        }
      })
      .then((err) => console.error(err));
    },

// //TODO 
//     saveBrewery(){
//       this.breweryId === 0 ? this.createBrewery() : this.updateBrewery();
//     },

//     updateBrewery(id) {
//       this.$emit('updateBrewery',id)
//     },

//     deleteBrewery() {
//       fetch(`${this.apiURL}/${this.breweryId}`,{
//         method: 'DELETE',
//         headers: { 
//           "Authorization": `Bearer ${auth.getToken()}`
//         }
//       }

//       )
//       .then((response) => {
//         if( response.ok ) {
//           this.brewery.splice();
//         }
//       })
//       .catch((err) => console.error(err));
//     },
  }
};
  
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
