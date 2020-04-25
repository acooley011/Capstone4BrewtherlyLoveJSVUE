import Vue from 'vue'
import Router from 'vue-router'
import auth from './auth'
import Home from './views/Home.vue'
import Login from './views/Login.vue'
import Register from './views/Register.vue'
import BreweryList from './views/BreweryList.vue'
import Reviews from './views/Reviews.vue'
import Administrator from './views/Administrator.vue'
import Brewer from './views/Brewer.vue'
import BeerLover from './views/BeerLover.vue'
import BeerList from './views/Beers.vue'

Vue.use(Router)

/**
 * The Vue Router is used to "direct" the browser to render a specific view component
 * inside of App.vue depending on the URL.
 *
 * It also is used to detect whether or not a route requires the user to have first authenticated.
 * If the user has not yet authenticated (and needs to) they are redirected to /login
 * If they have (or don't need to) they're allowed to go about their way.
 */

const router = new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: "/login",
      name: "login",
      component: Login,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: "/register",
      name: "register",
      component: Register,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: "/brewery-list",
      name: "brewery-list",
      component: BreweryList,
      meta: {
        requiresAuth: false
      }
    },
    {
    path: "/reviews",
    name: "reviews",
    component: Reviews,
    meta: {
      requiresAuth: false
    }
  },
  {
    path: "/beer-lover",
    name: "beer-lover",
    component: BeerLover,
    meta: {
      requiresAuth: false
    }
  },
  {
    path: "/beer-list",
    name: "beer-list",
    component: BeerList,
    meta: {
      requiresAuth: false
    }
  },
  {
    path: "/brewer",
    name: "brewer",
    component: Brewer,
    meta: {
      requiresAuth: false
    }
  },
  {
    path: "/admin",
    name: "admin",
    component: Administrator,
    meta: {
      requiresAuth: false
    }
  },


  ]
})

router.beforeEach((to, from, next) => {
  // Determine if the route requires Authentication
  const requiresAuth = to.matched.some(x => x.meta.requiresAuth);
  const user = auth.getUser();

  // If it does and they are not logged in, send the user to "/login"
  if (requiresAuth && !user) {
    next("/login");
  } else {
    // Else let them go to their next destination
    next();
  }
});

export default router;
