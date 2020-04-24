<template>
 <section class="section">
  <div id="register">
    <form class="form-register" @submit.prevent="register">
      <h1 class="h3 mb-3 font-weight-normal">Create Account</h1>
      <div class="alert alert-danger" role="alert" v-if="registrationErrors">
        There were problems registering this user.
      </div>

     
<main  class="is-size-20 has-text-weight-semibold box has-text-centered text-box main-content">
     <div class="field is-center " id="register">
      <label for="username" class="field"><strong>  Username:  </strong></label>
      <div>
      <input
        type="text"
        id="username"
        class="form-control"
        placeholder="Username"
        v-model="user.username"
        required
        autofocus/>
        </div>
        </div>
        <div class="field is-center" id="register">
        <label for="email" class="field"><strong>  Email Address:  </strong></label>
        <div>
        <input
          type="email"
          id="email"
          class="form-control"
          placeholder="youremail@website.com"
          v-model="user.email"
          required
          />
          </div>
          </div>
     <div class="field is-center " id="register">
      <label for="password" class="field"><strong>  Password:  </strong></label>
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
      <div class="field is-center" id="register">
        <label for="confirmPassword" class="field"><strong>  Confirm Password:  </strong></label>
      <div>
      <input
        type="password"
        id="confirmPassword"
        class="form-control"
        placeholder="Confirm Password"
        v-model="user.confirmPassword"
        required
      />
      </div>
      </div>
     
      
   
 <div class="select">
   <select>
      <option selected>Beer Lover</option>
        <option>Brewer</option>
    </select>
        </div><br/><br/>
      <button class="btn btn-lg btn-primary btn-block" type="submit">
        Create Account
      </button><br/>
     <router-link :to="{ name: 'login' }" class="link-text">
        Have an account?
      </router-link>
        </main>
  
    </form>
  </div>
 </section>
</template>

<script>
export default {
  name: 'register',
  data() {
    return {
      user: {
        username: '',
        email: '',
        password: '',
        confirmPassword: '',
        role: 'beer-lover',
      },
      registrationErrors: false,
    };
  },
  methods: {
    register() {
      fetch(`${process.env.VUE_APP_REMOTE_API}/register`, {
        method: 'POST',
        headers: {
          Accept: 'application/json',
          'Content-Type': 'application/json',
        },
        body: JSON.stringify(this.user),
      })
        .then((response) => {
          if (response.ok) {
            this.$router.push({ path: '/login', query: { registration: 'success' } });
          } else {
            this.registrationErrors = true;
          }
        })

        .then((err) => console.error(err));
    },
  },
};
</script>

<style scoped>

#register {
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
