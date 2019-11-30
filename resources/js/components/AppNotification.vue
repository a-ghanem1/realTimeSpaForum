<template>
	<div class="text-center">
		<v-menu offset-y>
		  <template v-slot:activator="{ on }">
		    <v-btn
		      color="red"
		      dark
		      v-on="on"
		      icon
		    >
				<v-icon :color="color">mdi-bell</v-icon> {{ unReadCount }}
		    
		    </v-btn>
		  </template>
		  <v-list>
		    <v-list-item
		      v-for="item in unRead" :key="item.id">
		      <router-link :to="item.path">
		      	<v-list-item-title @click="readNotification(item)"><div class="red--text">New Reply in "{{ item.question }}"</div></v-list-item-title>
		      </router-link>
		    </v-list-item>

		    <v-divider></v-divider>

			<v-list-item
		      v-for="item in read" :key="item.id">
		      	
	      		<v-list-item-title>New Reply in "{{ item.question }}"</v-list-item-title>
		    	
		    </v-list-item>		    
		  </v-list>
		</v-menu>
	</div>
	
</template>

<script>
	export default {
		data() {
			return {
				read: {},
				unRead: {},
				unReadCount: 0	
			}
		},
		created() {
			if (User.loggedIn()) {
				this.getNotifications()			
			}

			Echo.private('App.User.' + User.id())
				.notification((notification) => {
					this.unRead.unshift(notification)
					this.unReadCount++	
				})
		},
		computed: {
			color() {
				return this.unReadCount > 0 ? 'red' : 'red lighten-4'
			}
		},
		methods: {
			getNotifications() {
				axios.get('/api/notifications')
					.then(res => {
						this.read   = res.data.read
						this.unRead = res.data.unRead
						this.unReadCount = res.data.unRead.length
					})
					.catch(error => {
						Exception.handle(error)
					})	
			},
			readNotification(notification) {
				axios.post('/api/markAsRead', { id: notification.id })
					.then(res => {
						this.unRead.splice(notification,1)
						this.read.push(notification)
						this.unReadCount--
					})	
			}
		}
	}
</script>

<style>
	a {
		text-decoration: underline;
	}
</style>