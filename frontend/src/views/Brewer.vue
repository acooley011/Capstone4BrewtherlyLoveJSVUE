<template>
<body style="align-items: center; justify-content: center;">
<section class="section">
  <div class="h3 mb-3 font-weight-normal" id="brewer"><h1>Brewer</h1>
  <form v-on:submit.prevent="saveBeer">
    <main class="is-size-20 has-text-weight-semibold box has-text-centered text-box main-content">
    <button class="button is-link" type="submit">View Brewery Information</button>
  <div class="form">
    
      <div class="field is-center">
           <label for="name"><strong>Beer Name: </strong></label><br/>
            <input
              type="text"
              class="input"
              id="name"
              placeholder="Enter beer name"
              v-model="beer.name"
            />
         </div> 
  <label for="type"><strong>Type: </strong></label><br/>
        <div class="select">
             <select id="type" v-model="beer.type">
              <option selected>Pilsner</option>
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

         <div class="field is-center">
           <label for="name"><strong>ABV: </strong></label><br/>
            <input
              type="text"
              class="input"
              id="name"
              placeholder="Enter ABV"
              v-model="beer.abv"
            />
         </div>

         <div class="field is-center">
           <label for="name"><strong>Description: </strong></label><br/>
            <input
              type="text"
              class="input"
              id="name"
              placeholder="Enter description"
              v-model="beer.description"
            />
         </div> 
    <br/>
    <div class="field is-grouped-centered" id="brewer">
    <button class="button is-link" type="submit">Add A Beer to Beer List</button><br/><br/>
    <button class="button is-link" type="submit">Update Brewery Information</button><br/><br/>
    <button class="button is-link" type="submit">Remove A Beer from Beer List</button><br/><br/>
    </div>
    </div>
    </main>
    </form>
  </div>
  </section>
  </body>
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

#brewer {
  text-align: center;
}

.text-box {
  background-color: #f2f2f2;
  opacity: 0.92;
  width: 55vw;
}

section {
  align-items: center;
  justify-content: center;
}

.main-content {
margin-left: 30vw;
margin-right: 30vw;
min-width: 225px;
justify-content: center;
align-items:center;
padding: 5vw;
}

</style>