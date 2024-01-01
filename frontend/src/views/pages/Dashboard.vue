<template>
  <div class="container-scroller">
      <!-- partial:../../partials/_navbar.html -->
      <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
          <a class="navbar-brand brand-logo mr-5" href="index.html"><img src="bootstrap/images/logo.png" class="mr-2" alt="logo"/></a>
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
        <!-- partial:../../partials/_settings-panel.html -->
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
              <div class="col-lg-12 grid-margin">
                <div class="card">
                  <div  v-if="isLoggedIn" class="card-body">
                      <a href="/tambahproduk" class="btn btn-sm btn-success">Tambah Produk</a>
                      <table class="table">
                          <thead>
                              <tr>
                                  <th>No</th>
                                  <th>Nama Barang</th>
                                  <th>Harga Barang</th>
                                  <th>Stok</th>
                                  <th>Aksi</th>
                              </tr>
                          </thead>
                          <tbody>
                        <tr v-for="(product, index) in posts" :key="index">
                          <td>{{ product.id }}</td>
                          <td>{{ product.nama_barang }}</td>
                          <td>{{ product.harga_barang }}</td>
                          <td>{{ product.stok }}</td>
                          <router-link :to="{ name: 'detailproduk', params: { id: product.id } }" class="btn btn-info btn-detail">Detail</router-link>
  
                          <router-link :to="{ name: 'product.edit', params: { id: product.id } }" class="btn btn-warning btn-edit">
                            Edit
                          </router-link>
                          <a href="#" class="btn btn-danger btn-hapus" 
                          @click="deleteProduct(product.id)">Hapus</a>
                      </tr>
                    </tbody>
                      </table>
                  </div>
                  <div v-else>
                    <p>Please log in to view products.</p>
                  </div>
                </div>
              </div>
          </div>
          <!-- content-wrapper ends -->
          <!-- partial:../../partials/_footer.html -->
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
  </div>
  </template>
  
  
  <script>
  import axios from 'axios';
  import { onMounted, ref, computed } from 'vue';
  
  export default {
    setup() {
      let posts = ref([]);
      let currentPage = ref(1);
      const recordsPerPage = 11;
  
      onMounted(() => {
        axios
          .get('http://localhost:8000/api/product')
          .then((response) => {
            posts.value = response.data.data.sort((a, b) => a.id - b.id);
          })
          .catch((error) => {
            console.log(error.response.data);
          });
      });
  
      const totalPages = computed(() => Math.ceil(posts.value.length / recordsPerPage));
  
      function changePage(newPage) {
        if (newPage >= 1 && newPage <= totalPages.value) {
          currentPage.value = newPage;
        }
      }
  
      function getSlicedData() {
        const startIndex = (currentPage.value - 1) * recordsPerPage;
        const endIndex = startIndex + recordsPerPage;
        return posts.value.slice(startIndex, endIndex);
      }
  
      function deleteProduct(id) {
        const index = posts.value.findIndex((product) => product.id === id);
        if (index !== -1) {
          const confirmation = confirm('Anda yakin ingin hapus?');
          if (confirmation) {
            axios
              .delete(`http://localhost:8000/api/product/${id}`)
              .then(() => {
                posts.value.splice(index, 1);
              })
              .catch((error) => {
                console.log(error.response.data);
              });
          }
        }
      }
  
      
      return {
        posts: computed(() => getSlicedData()),
        currentPage,
        totalPages,
        changePage,
        deleteProduct,
      };
    },
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
  