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

.content {
  padding: 20px;
}




</style>