<template>
    <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth px-0">
          <div class="row w-100 mx-0">
            <div class="col-lg-4 mx-auto">
              <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                <h4>Halo! mari kita mulai</h4>
                <h6 class="font-weight-light">Masuk untuk melanjutkan.</h6>
                <form @submit.prevent="loginUser" class="pt-3">
                  <div class="form-group">
                    <input v-model="username" type="text" class="form-control form-control-lg" placeholder="Username">
                  </div>
                  <div class="form-group">
                    <input v-model="password" type="password" class="form-control form-control-lg" placeholder="Password">
                  </div>
                  <div class="mt-3">
                    <button type="submit" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn">SIGN IN</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
  </template>
  
  <script>
  export default {
    computed: {
      isLoggedIn() {
        return this.$store.state.isLoggedIn;
      },
    },
    methods: {
      async loginUser() {
        try {
          const response = await this.$http.post('/login', {
            username: this.username,
            password: this.password,
          });
  
          if (response.status === 200 && response.data.success) {
            this.$store.commit('setUser', this.username);
            this.$store.commit('setLoginStatus', true);
            this.$router.push('/');
          } else {
            alert('Username atau password salah');
          }
        } catch (error) {
          if (!error.response) {
            console.error(error);
            alert('Terjadi kesalahan jaringan. Silakan coba lagi.');
          } else {
            console.error(error.response.data);
            alert('Username atau password salah');
          }
        }
      },
      cancelLogin() {
        this.$router.go(-1);
      },
    },
    head() {
      return {
        script: [
          { src: 'https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js' },
          { src: 'https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js' },
        ],
      };
    },
  };
  </script>
  
  <style scoped>
  /* Import the external CSS file */
  </style>
  