<template>
	<v-card tile>
		<v-container fluid>
			<v-card-title>
				<div>
					<div class="headline">
						{{ question.title }}
					</div>
					
					<span class="grey--text">
						{{ question.user }} said {{ question.created_at }}
					</span>
				</div>

				<v-spacer></v-spacer>

				<v-btn color="teal" tile dark>{{ replyCount }} Replies</v-btn>
			</v-card-title>

			<v-card-text v-html="body"></v-card-text>

			<v-card-actions v-if="own">
				<v-btn class="ma-2" color="orange" dark @click="edit">Edit
		        	<v-icon dark right>mdi-pencil</v-icon>
		      	</v-btn>

				<v-btn class="ma-2" color="red" dark @click="destroy">Delete
		        	<v-icon dark right>mdi-delete</v-icon>
		      	</v-btn>
			</v-card-actions>
		</v-container>
	</v-card>	
</template>

<script>
	export default {
		props: ['question'],
		data() {
			return {
				own: User.own(this.question.user_id),
				replyCount: this.question.replies_count
			}
		},
		computed: {
			body() {
				return md.parse(this.question.body)
			}
		},
		created() {
			EventBus.$on('newReply', () => {
				this.replyCount++
			})

			EventBus.$on('deleteReply', () => {
				this.replyCount--
			})

			Echo.channel('newReplyChannel')
					.listen('NewReplyEvent', (e) => {
					this.replyCount++	
				})

			Echo.channel('deleteReplyChannel')
				.listen('DeleteReplyEvent', (e) => {
					this.replyCount--	
				})
		},
		methods: {
			destroy() {
				axios.delete(`/api/question/${this.question.slug}`)
					.then(res => this.$router.push('/forum'))
					.catch(err => console.log(err.response.data))
			},
			edit() {
				EventBus.$emit('edit')
			}
		}
	}
</script>