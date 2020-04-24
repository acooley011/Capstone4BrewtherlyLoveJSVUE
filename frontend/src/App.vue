<template>

<container class="section">
  <body class="has-navbar-fixed-top" width="100%">
 
<header>
  <navbar class="level navbar is-fixed-top is-spaced" role="navigation" aria-label="main navigation">
    <div class="level-item has-text-centered">
      <a role="button" class="navbar-burger burger" aria-label="menu"
				aria-expanded="false" data-target="navbarBasicExample"><span
				aria-hidden="true"></span> 
				<span aria-hidden="true"></span> <span
				aria-hidden="true"></span>
			</a>
      </div>
    <div class="navbar-menu is-link">
			<div class="navbar-start is-size-5">
    <a href="/">
      <img src="./assets/images/navbarImageWhite.png" width="40px" alt="Love Beer logo">
    </a>
    
      <a class="navbar-item"><router-link :to="{name: 'home'}">
        <span class="icon is-small"><i class="fa fa-home" aria-hidden="true"></i></span><span> Home</span></router-link></a>
      <a class="navbar-item"><router-link :to="{name: 'brewery-list'}">
        <span class="icon is-small"><i class="fa fa-beer" aria-hidden="true"></i></span><span> Brewery List</span></router-link></a>
      <a class="navbar-item"><router-link :to="{name: 'reviews'}">
        <span class="icon is-small"><i class="fas fa-edit" aria-hidden="true"></i></span><span> Reviews</span></router-link></a>
      <a class="navbar-item"><router-link :to="{name: 'login'}">
      <span class="icon is-small"><i class="fa fa-user-circle" aria-hidden="true"></i></span><span> Login/Register</span></router-link></a>
    
    </div>
    </div>
  </navbar>
</header>
    <router-view />

<footer class="footer">
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
background: url("https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Philadelphia_cityscape_BW_20150328.jpg/1200px-Philadelphia_cityscape_BW_20150328.jpg") center / cover;
}

.content {
  padding: 20px;
}

.navbar-item {
  color: white;
}

footer {
  height: 20px;
}





</style>