<template>
  <div id="app">
<header>
    <nav class="breadcrumb is-centered has-dot-separator " aria-label="breadcrumbs">
      <div id ="navbarBasicExample" class="navbar-menu ">
        <div class="navbar-start is-size-5">
      <li><router-link :to="{name: 'home'}">
        <span class="icon is-small"><i class="fa fa-home" aria-hidden="true"></i></span><span>Home</span></router-link></li>
      <li><router-link :to="{name: 'brewery-list'}">
        <span class="icon is-small"><i class="fa fa-beer" aria-hidden="true"></i></span><span>Brewery List</span></router-link></li>
      <li><router-link :to="{name: 'reviews'}">
        <span class="icon is-small"><i class="fa fa-envelope-open" aria-hidden="true"></i></span><span>Reviews</span></router-link></li>
     <li><router-link :to="{name: 'login'}">
      <span class="icon is-small"><i class="fa fa-user-circle" aria-hidden="true"></i></span><span>Login/Register</span></router-link></li>
        </div>
        </div>
      </nav>
    </header>
    <section>
      <div>
        </div>
        </section>
    <router-view />
    </div>
  
</template>

<style>

/*
body {
  margin: 0;
  padding: 0;
  width: 100vw;
  height: 100%;
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
  background-image: linear-gradient(120deg, #a1c4fd 0%, #c2e9fb 100%);
  font-family: 'Roboto', sans-serif;
}
*/
/*#app {
  width: 80vw;
  height: 100%;
  background-color: white;
}*/

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