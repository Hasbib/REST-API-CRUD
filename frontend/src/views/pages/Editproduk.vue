<template>
    <div class="container mt-5">
      <div class="row">
        <div class="col-md-12">
          <div class="card border-0 rounded shadow">
            <div class="card-body">
              <h4>EDIT DATA PRODUK</h4>
              <hr>
  
              <form @submit.prevent="update">
                <div class="form-group">
                  <label for="nama_barang" class="font-weight-bold">Nama Produk</label>
                  <input type="text" id="nama_barang" class="form-control" v-model="post.nama_barang" placeholder="Masukkan nama produk">
                  <!-- validation -->
                  <div v-if="validation.nama_barang" class="mt-2 alert alert-danger">
                    {{ validation.nama_barang[0] }}
                  </div>
                </div>
  
                <div class="form-group">
                  <label for="harga_barang" class="font-weight-bold">Harga Barang</label>
                  <input type="text" id="harga_barang" class="form-control" v-model="post.harga_barang" placeholder="Masukkan harga barang">
                  <!-- validation -->
                  <div v-if="validation.harga_barang" class="mt-2 alert alert-danger">
                    {{ validation.harga_barang[0] }}
                  </div>
                </div>
  
                <div class="form-group">
                  <label for="stok" class="font-weight-bold">Stok</label>
                  <input type="text" id="stok" class="form-control" v-model="post.stok" placeholder="Masukkan stok">
                  <!-- validation -->
                  <div v-if="validation.stok" class="mt-2 alert alert-danger">
                    {{ validation.stok[0] }}
                  </div>
                </div>
  
                <div class="form-group">
                  <label for="deskripsi" class="font-weight-bold">Deskripsi</label>
                  <textarea id="deskripsi" class="form-control" v-model="post.deskripsi" placeholder="Masukkan deskripsi"></textarea>
                  <!-- validation -->
                  <div v-if="validation.deskripsi" class="mt-2 alert alert-danger">
                    {{ validation.deskripsi[0] }}
                  </div>
                </div>
  
                <button type="submit" class="btn btn-tambah">SIMPAN</button>
                <br><br>
                <button class="btn btn-sm btn-batal"><a href="/dashboard">BATAL</a></button>

              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </template>
  
  <script>
  import { reactive, ref, onMounted } from 'vue';
  import { useRouter, useRoute } from 'vue-router';
  import axios from 'axios';
  
  export default {
    setup() {
      // initial state
      const post = reactive({
        nama_barang: '',
        harga_barang: '',
        stok: '',
        deskripsi: '',

      });
  
      // state validation
      const validation = ref([]);
  
      // vue router
      const router = useRouter();
  
      // vue router
      const route = useRoute();
  
      // mounted
      onMounted(() => {
        // get API from Laravel Backend
        axios.get(`http://localhost:8000/api/product/${route.params.id}`)
          .then(response => {
            // assign state posts with response data
            const data = response.data.data;
            post.nama_barang = data.nama_barang;
            post.harga_barang = data.harga_barang;
            post.stok = data.stok;
            post.deskripsi = data.deskripsi;

          })
          .catch(error => {
            console.log(error.response.data);
          });
      });
  
      // method update
      function update() {
        const { nama_barang, harga_barang, stok, deskripsi} = post;
  
        axios.put(`http://localhost:8000/api/product/${route.params.id}`, {
          nama_barang,
          harga_barang,
          stok,
          deskripsi,
     
        })
        .then(() => {
          // redirect to siswa index
          router.push({
            path: '/dashboard',
          });
        })
        .catch(error => {
          // assign state validation with error
          validation.value = error.response.data;
        });
      }
     
  
      // return
      return {
        post,
        validation,
        router,
        update,

      };
    },
  };
  </script>
     
<style scoped>
/* Your scoped styles here */
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f2f2f2;
    margin: 0;
    padding: 0;
}

.container {
    max-width: 600px;
    margin: 50px auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 10px;
}

h2 {
    text-align: center;
    color: #333;
}

form {
    margin-top: 20px;
}

label {
    display: block;
    margin-bottom: 8px;
    color: #333;
}

input, textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ddd;
    border-radius: 5px;
    box-sizing: border-box;
    font-size: 16px;
}

textarea {
    resize: vertical;
}

.btn-tambah {
  background-color: #4CAF50; 
  color: white;
}

.btn-batal {
  background-color: #3498db; 
  color: white;
}

.btn-batal:hover {
  background-color: #2980b9; 
}

</style>
    