<template>

<container class="section">
  <body class="has-navbar-fixed-top" width="100%">
 
<header>
  <navbar class="level navbar is-fixed-top is-transparent" role="navigation" aria-label="main navigation">
    <div class="level-item has-text-centered">
      <a role="button" class="navbar-burger burger" v-on:click="hamburgerOpen = !hamburgerOpen" v-bind:class="{'is-active':hamburgerOpen}" aria-label="menu"
				aria-expanded="false" data-target="navbarBasicExample"><span
				aria-hidden="true"></span> 
				<span aria-hidden="true"></span> <span
				aria-hidden="true"></span>
			</a>
      </div>
    <div class="navbar-menu is-link" v-bind:class="{'is-active':hamburgerOpen}">
			<div class="navbar-start is-size-5">
    <a href="/">
      <img src="./assets/images/navbarImageWhite.png" width="40px" alt="Love Beer logo">
    </a>
    
      <a class="navbar-item"><router-link :to="{name: 'home'}">
        <span class="icon is-small"><i class="fa fa-home" aria-hidden="true"></i></span><span> Home</span></router-link></a>
      <a class="navbar-item"><router-link :to="{name: 'brewery-list'}">
        <span class="icon is-small"><i class="fa fa-beer" aria-hidden="true"></i></span><span> Brewery List</span></router-link></a>
      <!--<a class="navbar-item"><router-link :to="{name: 'beer-list'}">
        <span class="icon is-small"><i class="fa fa-beer" aria-hidden="true"></i></span><span> Beer List</span></router-link></a>-->
      <a class="navbar-item"><router-link :to="{name: 'reviews'}">
        <span class="icon is-small"><i class="fas fa-edit" aria-hidden="true"></i></span><span> Reviews</span></router-link></a>
      <a class="navbar-item"><router-link :to="{name: 'login'}">
      <span class="icon is-small"><i class="fa fa-user-circle" aria-hidden="true"></i></span><span> Login/Register</span></router-link></a>
      
      <!-- add eventuealllyyyyyyy :disabled="isBeerLover" -->
      <a class="navbar-item"><router-link :to="{name: 'beer-lover'}">
      <span class="icon is-small"><i class="fa fa-user-circle" aria-hidden="true"></i></span>
      <span> Beer Lover </span></router-link></a>

      <a class="navbar-item"><router-link :to="{name: 'admin'}">
      <span class="icon is-small"><i class="fa fa-user-circle" aria-hidden="true"></i></span>
      <span> Administrator </span></router-link></a>

      <a class="navbar-item"><router-link :to="{name: 'brewer'}">
      <span class="icon is-small"><i class="fa fa-user-circle" aria-hidden="true"></i></span>
      <span> Brewer </span></router-link></a>

    </div>
    </div>
  </navbar>
</header>
<router-view />

<footer class="footer-text">
  
    <p style="padding-top: 5px;">
      <strong>COBL</strong> by <a href="#">TE Capstone Team One PHL 2020</a> 
    </p>
  
</footer>
</body>
</container>
</template>

<script>
//import auth from "@/auth.js";

export default {
  data() {
    return {
        hamburgerOpen : false
        //isBeerLover: auth.userHasRole('beer-lover'),
    };
  },

}
</script>

<style>

h1 {
  font-size: 2.5em;
}

body {

background: linear-gradient(rgba(255, 255, 255, 0.9), rgba(255, 255, 255, 0.7)), url("http://blogs.commons.georgetown.edu/kcr39/files/2015/12/Philadelphia-Photography.jpg") center / cover  ;
width: 100vw;
height: 100%;
}

.content {
  padding: 20px;
}

.navbar-item {
  color: white;
}

.footer-text {
text-align: center;
height: 5px;
 
}

p {
  background-color: white;
  opacity: 0.8;
}


</style>