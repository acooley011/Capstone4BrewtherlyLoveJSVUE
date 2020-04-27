<template>
<section class="section">
  <div id="login">
    <form class="form-signin" @submit.prevent="login">
      <h1 class="h3 mb-3 font-weight-normal">Please Sign In</h1>
      <div class="alert alert-danger" role="alert" v-if="invalidCredentials">
        Invalid username and password!
      </div>
      <div class="alert alert-success" role="alert" v-if="this.$route.query.registration">
        Thank you for registering, please sign in.
      </div>
       <main id="main-content" class="is-size-20 has-text-weight-semibold box has-text-centered text-box main-content">
      
      
   
      <div class="field is-center" id="login">
      <label for="username" class="field"><strong>Username:</strong></label>
      <div>
      <input type="text"
        id="username"
        class="form-control"
        placeholder="Username"
        v-model="user.username"
        required
        autofocus/>
      </div>
      </div>
      <div class="field is-center" id="login">
      <label for="password" class="field"><strong>Password:</strong></label>
      <div>
      <input
        type="password"
        id="password"
        class="form-control"
        placeholder="Password"
        v-model="user.password"
        required
      />
      </div>
      </div>
      <button type="submit">Sign in</button><br/>
      <router-link :to="{ name: 'register' }" class="link-text"><strong>Need an account?</strong></router-link><br/><br/>
       <router-link :to="{ name: 'password'}" class="link-text"><strong>Forgot your password?</strong></router-link><br/><br/><br/><br/><br/><br/><br/>
       <br/><br/><br/><br/><br/>
       </main>
    </form>
  </div>
</section>
</template>

<script>
import auth from '../auth';

export default {
  name: 'login',
  components: {},
  data() {
    return {
      user: {
        username: '',
        password: '',
      },
      invalidCredentials: false,
    };
  },
  methods: {
    login() {
      fetch(`${process.env.VUE_APP_REMOTE_API}/login`, {
        method: 'POST',
        headers: {
          Accept: 'application/json',
          'Content-Type': 'application/json',
        },
        body: JSON.stringify(this.user),
      })
        .then((response) => {
          if (response.ok) {
            return response.text();
          } else {
            this.invalidCredentials = true;
          }
        })
        .then((token) => {
          if (token != undefined) {
            if (token.includes('"')) {
              token = token.replace(/"/g, '');
            }
            auth.saveToken(token);
            this.$router.push('/');
          }
        })
        .catch((err) => console.error(err));
    },
  },
};
</script>

<style scoped>
#login {
  text-align: center;
}
.link-text {
color: blue;
	font-size: 14px;
}

.link-text:hover {
  text-decoration:underline;
}

.text-box {
  opacity: 0.92;
  width: 50vw;
}

section {
  align-content: center;
  justify-content: center;
}

.main-content {
margin-left: 22vw;
}

</style>
