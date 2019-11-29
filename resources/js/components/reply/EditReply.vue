<template>
	<div>
		<vue-simplemde preview-class="markdown-body" v-model="reply.body" />
		<div>
			<v-card-actions>
				<v-btn color="orange" dark icon @click="update">
		        	<v-icon dark>mdi-pencil</v-icon>
		      	</v-btn>

				<v-btn color="red" dark icon @click="cancel">
		        	<v-icon dark>mdi-cancel</v-icon>
		      	</v-btn>
			</v-card-actions>
		</div>
    </div>
</template>
	
<script>
	export default {
		props: ['reply'],
		methods: {
			update() {
				axios.patch(`/api/question/${this.reply.question_slug}/reply/${this.reply.id}`, {
					body: this.reply.body
				})
				.then(res => {
					this.cancel()
				})
			},

			cancel() {
				EventBus.$emit('cancelEditing')	
			}
		}
	}
</script>