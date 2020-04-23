<template>
<container class="section">
  <body class="has-navbar-fixed-top" width="100%">
 
<header>
  <nav class="level has-background-link navbar is-fixed-top is-spaced" role="navigation" aria-label="main navigation">
    <div class="level-item has-text-centered">
      <a role="button" class="navbar-burger burger" aria-label="menu"
				aria-expanded="false" data-target="navbarBasicExample"> <span
				aria-hidden="true"></span> 
				<span aria-hidden="true"></span> <span
				aria-hidden="true"></span>
			</a>
      </div>
    <div id="navbarBasicExample" class="navbar-menu">
			<div class="navbar-start is-size-5">
        
    <a>
      <img src="./assets/images/navbarImage.png" width="40px" padding-right="10px">
    </a>
    
      <a class="navbar-item"><router-link :to="{name: 'home'}">
        <span class="icon is-small"><i class="fa fa-home" aria-hidden="true"></i></span><span> Home</span></router-link></a>
      <a class="navbar-item"><router-link :to="{name: 'brewery-list'}">
        <span class="icon is-small"><i class="fa fa-beer" aria-hidden="true"></i></span><span> Brewery List</span></router-link></a>
      <a class="navbar-item"><router-link :to="{name: 'reviews'}">
        <span class="icon is-small"><i class="fa fa-envelope-open" aria-hidden="true"></i></span><span> Reviews</span></router-link></a>
      
      <a class="navbar-item"><router-link :to="{name: 'login'}">
      <span class="icon is-small"><i class="fa fa-user-circle" aria-hidden="true"></i></span><span> Login/Register</span></router-link></a>
      
    </div>
    </div>
  </nav>
</header>
    <router-view />

<footer class="footer" height="10%">
  <div class="content has-text-centered">
    <p>
      <strong>COBL</strong> by <a href="#">TE Capstone Team One PHL 2020</a> 
    </p>
  </div>
</footer>
</body>
</container>
</template>

<style>

h1 {
  font-size: 2.5em;
}

body {
justify-content: center;
align-items: center;
background-image: url("https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Philadelphia_cityscape_BW_20150328.jpg/1200px-Philadelphia_cityscape_BW_20150328.jpg");
background-repeat: no-repeat;
}

.content {
  padding: 20px;
}






</style>