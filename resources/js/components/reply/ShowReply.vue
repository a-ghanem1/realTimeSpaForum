<template>
	<div>
		<v-card tile class="mt-3">
			<v-card-title>
				<div class="headline">{{ reply.user }}</div>
				<div class="ml-2 font-weight-light subtitle-2">Said {{ reply.created_at }}</div>
			</v-card-title>
			
			<v-divider></v-divider>

			<edit-reply 
				v-if="editing"
				:reply=reply></edit-reply>
			
			<v-card-text v-else v-html="replyBody"></v-card-text>

			<v-divider></v-divider>

			<div v-if="!editing">
				<v-card-actions v-if="own">
					<v-btn color="orange" dark icon @click="edit">
			        	<v-icon dark>mdi-pencil</v-icon>
			      	</v-btn>

					<v-btn color="red" dark icon @click="destroy">
			        	<v-icon dark>mdi-delete</v-icon>
			      	</v-btn>
				</v-card-actions>
			</div>
		</v-card>
	</div> 
</template>

<script>
	import EditReply from './EditReply'

	export default {
		props: ['reply', 'index'],
		components: {
			EditReply
		},
		data() {
			return {
				editing: false
			}
		},
		created() {
			this.listen()
		},
		computed: {
			own() {
				return User.own(this.reply.user_id)
			},
			replyBody() {
				return md.parse(this.reply.body)
			}
		},
		methods: {
			destroy() {
				EventBus.$emit('deleteReply', this.index) 
			},
			edit() {
				this.editing = true
			},
			listen() {
				this.cancelEditing()
			},
			cancelEditing() {
				EventBus.$on('cancelEditing', () => {
					this.editing = false
				})
			}
		}
	}
</script>