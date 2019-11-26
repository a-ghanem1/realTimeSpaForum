<template>
  <div>
    <v-toolbar>
      <v-toolbar-title>Acme Forum</v-toolbar-title>

      <v-spacer></v-spacer>

      <div>

        <router-link> 
          <v-btn text>Forum</v-btn>
        </router-link>

        <router-link> 
          <v-btn text>Ask Question</v-btn>
        </router-link>

        <router-link> 
          <v-btn text>Category</v-btn>
        </router-link>

        <router-link to="/login"> 
          <v-btn text>Login</v-btn>
        </router-link>
        
      </div>
    </v-toolbar>
  </div>
</template>

<script>
  export default {

  }
</script>