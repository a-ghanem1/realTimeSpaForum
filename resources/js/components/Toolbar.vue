<template>
  <div>
    <v-toolbar>
      <v-toolbar-title>Acme Forum</v-toolbar-title>

      <v-spacer></v-spacer>
      
      <app-notification
        v-if="loggedIn"></app-notification>

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
  import AppNotification from './AppNotification'

  export default {
    components: {
      AppNotification
    },
    data() {
      return {
        loggedIn: User.loggedIn(),
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