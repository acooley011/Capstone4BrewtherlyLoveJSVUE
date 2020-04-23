<template>
<container>
  <div id="app">
<header>
  <nav class="level has-background-info" role="navigation" aria-label="main navigation">
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
</div>
<footer class="footer">
  <div class="content has-text-centered">
    <p>
      <strong>COBL</strong> by <a href="#">TE Capstone Team One PHL 2020</a> 
    </p>
  </div>
</footer>
</container>
</template>

<style>

h1 {
  font-size: 2.5em;
}

/*body {
  margin: 0;
  padding: 0;
  width: 100vw;
  height: 100%;
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
  background-image: url("https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Philadelphia_cityscape_BW_20150328.jpg/1200px-Philadelphia_cityscape_BW_20150328.jpg");
  font-family: 'Roboto', sans-serif;
  opacity: 0.6;
}
*/
section {
justify-content: center;
align-items: center;
background-image: url("https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Philadelphia_cityscape_BW_20150328.jpg/1200px-Philadelphia_cityscape_BW_20150328.jpg");
background-repeat: no-repeat;
height: 100%;
}

/*#app {
  width: 80vw;
  height: 100%;
  background-color: white;
}

/*header {
  height: 50px;
  width: 100%;
  display: flex;
  flex-direction: row;
  background-color: rgb(247, 247, 247);

}

.nav {
  padding:14px;
  height: auto;
  width: 80vw;
  margin:0;
  flex:1;
  list-style-type: none;
}*/
/*
.nav li {
  display: inline;
  padding-right: 20px;
}

.nav img {
  height: 100%;
  width: 5%;
  padding-right: 30px;
}

.nav li a:hover {
  text-decoration: underline;
}
.nav li a, .nav li a:visited {
  text-decoration: none;
  color: rgb(56, 56, 146);
  text-transform: uppercase;
  font-size: 13px;
}

.nav-right {
  height: auto;
  flex: 1;
  list-style-type: none;
  padding: 14px;
  margin: 0;
  text-align: right;
}
.nav-right li {
  display: inline;
  padding-right: 20px;
  vertical-align: text-top;
}
.nav-right li a, .nav-right li a:visited {
  text-decoration: none;
  color: rgb(56, 56, 146);
  text-transform: uppercase;
  font-size: 13px;
}
.nav-right li a:hover {
  text-decoration: underline;
}

.fas {
  margin-right: 4px;
}
*/
.content {
  padding: 20px;
}




</style>