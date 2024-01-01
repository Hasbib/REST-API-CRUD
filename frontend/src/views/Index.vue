<template>
<div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
            <a class="navbar-brand brand-logo mr-5" href="#"><img src="bootstrap/images/logo.png" class="mr-2" alt="logo"/></a>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
          <span class="icon-menu"></span>
        </button>
        <ul class="navbar-nav mr-lg-2">
            <li class="nav-item nav-search d-none d-lg-block">
                <div class="input-group">
                    <div class="input-group-prepend hover-cursor" id="navbar-search-icon">
                        <span class="input-group-text" id="search">
                            <i class="icon-search"></i>
                        </span>
                    </div>
                <input type="text" class="form-control" id="navbar-search-input" placeholder="Search now" aria-label="search" aria-describedby="search">
                </div>
            </li>
        </ul>
        <ul class="navbar-nav navbar-nav-right">
            <div class="d-inline-flex align-items-center">
                <div class="btn-group">
                    <button type="button" class="btn btn-sm btn-light dropdown-toggle" data-toggle="dropdown">
                        {{ isLoggedIn ? username : 'Akun Saya' }}
                    </button>
                    <div class="dropdown-menu dropdown-menu-right">
                        <router-link v-if="!isLoggedIn" to="/login" class="dropdown-item">Login</router-link>
                        <button v-if="isLoggedIn" @click="logoutUser" class="dropdown-item">Logout</button>
                    </div>
                </div>
            </div>
        </ul>

        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="icon-menu"></span>
        </button>
      </div>
    </nav>
     <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_settings-panel.html -->
        <div class="theme-setting-wrapper">
            <div id="settings-trigger"><i class="ti-settings"></i></div>
                <div id="theme-settings" class="settings-panel">
                <i class="settings-close ti-close"></i>
                <p class="settings-heading">SIDEBAR SKINS</p>
                <div class="sidebar-bg-options selected" id="sidebar-light-theme"><div class="img-ss rounded-circle bg-light border mr-3"></div>Light</div>
                <div class="sidebar-bg-options" id="sidebar-dark-theme"><div class="img-ss rounded-circle bg-dark border mr-3"></div>Dark</div>
                <p class="settings-heading mt-2">HEADER SKINS</p>
                <div class="color-tiles mx-0 px-4">
                    <div class="tiles success"></div>
                    <div class="tiles warning"></div>
                    <div class="tiles danger"></div>
                    <div class="tiles info"></div>
                    <div class="tiles dark"></div>
                    <div class="tiles default"></div>
                </div>
            </div>
        </div>
      
        <!-- partial -->
        <!-- partial:partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
            <ul class="nav">
            <li class="nav-item">
                <router-link to="/" class="nav-link">
                    <i class="icon-paper menu-icon"></i>
                    <span class="menu-title">Documentasi</span>
                </router-link>
            </li>
            <li class="nav-item">
                <router-link to="/produk" class="nav-link">
                    <i class="icon-layout menu-icon"></i>
                    <span class="menu-title">Produk</span>
                </router-link>
            </li>
            <li class="nav-item">
                <router-link to="/dashboard" class="nav-link">
                    <i class="icon-grid menu-icon"></i>
                    <span class="menu-title">Dashboard</span>
                </router-link>
            </li>
            <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
              <i class="icon-head menu-icon"></i>
              <span class="menu-title">Akun</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="auth">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="/profil"> Profil </a></li>
                <li class="nav-item"> <a class="nav-link" href="/registrasi"> Registrasi </a></li>
              </ul>
            </div>
          </li>
        </ul>
      </nav>
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
            <div class="col-md-12 grid-margin">
              <div class="row">
                <div class="col-12 col-xl-8 mb-4 mb-xl-0">
                  <h3 class="font-weight-bold">Praktikum Back End</h3><br>
                  <h6 class="font-weight-normal mb-0">V3422029         <span class="text-primary">Habib Shohiburrotib </span></h6>
                  <h6 class="font-weight-normal mb-0">V3422041         <span class="text-primary">Muhammad Afkar Triwardana</span></h6>
                  <h6 class="font-weight-normal mb-0">V3422044         <span class="text-primary">Muhammad Yusuf </span></h6>
                </div>    
              </div>
            </div>
          </div>
          <div class="row">
              <div class="card tale-bg">
                  <img src="bootstrap/images/dashboard/foto.jpeg" alt="people">
            </div>  
          </div>
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
        <footer class="footer">
            <div class="d-sm-flex justify-content-center justify-content-sm-between">
                <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2023.  Premium <a href="https://www.bootstrapdash.com/" target="_blank">Habib Shohiburrotib</a> from BootstrapDash. All rights reserved.</span>
                <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="ti-heart text-danger ml-1"></i></span>
            </div>
        </footer>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>

</template>

<script>
export default {
    computed: {
        username() {
            return this.$store.state.username;
        },
        isLoggedIn() {
            return this.$store.state.isLoggedIn;
        },
    },
    methods: {
        logoutUser() {
            this.$store.commit('setUser', ''); // Clear username
            this.$store.commit('setLoginStatus', false); // Update login status
            this.$router.push('/login');
        },
    },
};
</script>

