<template>
  <div id="app">
<header>
    <ul class="nav">
      <li><router-link :to="{name: 'home'}" exact class="home">Home</router-link></li>
      <li><router-link :to="{name: 'brewery-list'}" class="home">Brewery List</router-link></li>
      <li><router-link :to="{name: 'beer-list'}" class="home">Beer List</router-link></li>
      </ul>
    </header>
    <div class="content">
    <router-view />
    </div>
  </div>
</template>




<style>

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

/*#app {
  width: 80vw;
  height: 100%;
  background-color: white;
}*/

header {
  height: 50px;
  width: 100%;
  display: flex;
  flex-direction: row;
  background-color: rgb(247, 247, 247);

}

.nav {
  padding:14px;
  margin:0;
  flex:1;
  list-style-type: none;
}

.nav li {
  display: inline;
  padding-right: 20px;
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

.content {
  padding: 20px;
}




</style>