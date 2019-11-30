<template>
	<div>
		<v-btn icon @click="likeIt">
			<v-icon :color="color">mdi-heart</v-icon> {{ count }}
		</v-btn>
	</div>
</template>

<script>
	export default {
		props: ['reply'],
		data() {
			return {
				liked: this.reply.liked,
				count: this.reply.likes_count
			}
		},
		computed: {
			color() {
				return this.liked ? 'red' : 'red lighten-4'
			}
		},
		created() {
			Echo.channel('likeChannel')
			    .listen('LikeEvent', (e) => {
			        if (this.reply.id == e.id) {
			        	e.type == 1 ? this.count++ : this.count--
			        }

			    });
		},
		methods: {
			likeIt() {
				if (User.loggedIn()) {
					this.liked ? this.decreament() : this.increament()
					this.liked = !this.liked
				}
			},
			increament() {
				axios.post(`/api/like/${this.reply.id}`)
					.then(res => {
						this.count++
					})
			},
			decreament() {
				axios.delete(`/api/like/${this.reply.id}`)
					.then(res => {
						this.count--
					})
			}
		}
	}
</script>