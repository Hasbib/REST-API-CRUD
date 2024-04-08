<template>
    <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth px-0">
          <div class="row w-100 mx-0">
            <div class="col-lg-4 mx-auto">
              <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                <h4>Halo! mari kita mulai</h4>
                <h6 class="font-weight-light">Registrasi akun untuk melanjutkan.</h6>
                <form @submit.prevent="registerUser" class="pt-3">
                  <div class="form-group">
                    <input v-model="username" type="text" class="form-control form-control-lg" placeholder="Username">
                  </div>
                  <div class="form-group">
                    <input v-model="email" type="text" class="form-control form-control-lg" placeholder="Email">
                  </div>
                  <div class="form-group">
                    <input v-model="password" type="password" class="form-control form-control-lg" placeholder="Password">
                  </div>
                  <div class="mt-3">
                    <button type="submit" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn">SIGN IN</button>
                  </div>
                  <br><br>
                    <button @click="cancelLogin">Batal</button>
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
    data() {
      return {
        username: '',
        email: '',
        password: '',
      };
    },
    methods: {
      async registerUser() {
        try {
          const response = await this.$http.post('/registrasi', {
            username: this.username,
            email: this.email,
            password: this.password,
          });
  
          console.log(response.data);
        } catch (error) {
          console.error(error.response.data);
        }
        this.$router.push('/');
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
  