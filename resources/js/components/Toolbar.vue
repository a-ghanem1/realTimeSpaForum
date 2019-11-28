<template>
  <div>
    <v-toolbar>
      <v-toolbar-title>Acme Forum</v-toolbar-title>

      <v-spacer></v-spacer>

      <div>

        <router-link 
          v-for="item in items"
          :to="item.to"
          :key="item.title"
          v-if="item.show"
          > 
          <v-btn text>{{ item.title }}</v-btn>
        </router-link>
        
      </div>
    </v-toolbar>
  </div>
</template>

<script>
  export default {
    data() {
      return {
        items: [
          { title: 'Forum', to: '/forum', show: true },
          { title: 'Ask Question', to: '/ask', show: User.loggedIn() },
          { title: 'Category', to: '/category', show: User.admin() },
          { title: 'Login', to: '/login', show: !User.loggedIn() },
          { title: 'logout', to: '/logout', show: User.loggedIn() }
        ]
      }
    },
    created() {
      EventBus.$on('logout', () => {
        User.logout()
      })   
    }
  }
</script>

<style>
  a {
    text-decoration: none;
  }
</style>