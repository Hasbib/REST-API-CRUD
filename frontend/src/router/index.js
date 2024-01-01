import { createRouter, createWebHistory } from 'vue-router';
import Index from '../views/Index.vue';
import Produk from '../views/pages/Produk.vue';
import Dashboard from '../views/pages/Dashboard.vue';
import Registrasi from '../views/pages/Registrasi.vue';
import Profil from '../views/pages/Profil.vue';
import Login from '../views/akun/Login.vue';
import Detailproduk from '../views/pages/Detailproduk.vue';
import Editproduk from '../views/pages/Editproduk.vue';
import Tambahproduk from '../views/pages/Tambahproduk.vue';

const routes = [
    { path: '/', component: Index },
    { path: '/produk', component: Produk },
    { path: '/dashboard', component: Dashboard },
    { path: '/registrasi', component: Registrasi },
    { path: '/profil', component: Profil },
    { path: '/login', component: Login },
    { path: '/detailproduk/:id', name: 'detailproduk', component: Detailproduk },
    { path: '/editproduk/:id', name: "product.edit", component: Editproduk },
    { path: '/tambahproduk', component: Tambahproduk },
];

const router = createRouter({
    history: createWebHistory(),
    routes,
  });
  
export default router;