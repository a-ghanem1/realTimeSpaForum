<template>
	<div>
		<v-toolbar color="cyan" dark dense class="mt-2">
      		<v-toolbar-title>Replies</v-toolbar-title>
    	</v-toolbar>

    	<show-reply
			v-for="(reply, index) in items"
			:key="reply.id"
			:reply="reply"
			:index="index"
    	></show-reply>
	</div>
</template>

<script>
	import ShowReply from './ShowReply'

	export default {
		props: ['question'],
		data() {
			return {
				items: this.question.replies
			}
		},
		components: {
			ShowReply
		},
		created() {
			this.listen()
		},
		methods: {
			listen() {
				this.newReply()
				this.deleteReply()
			},
			newReply() {
				EventBus.$on('newReply', (reply) => {
					this.items.unshift(reply)	
				})

				Echo.channel('newReplyChannel')
					.listen('NewReplyEvent', (e) => {
						this.items.unshift(e.reply)
					})
			},
			deleteReply() {
				EventBus.$on('deleteReply', (index) => {
					axios.delete(`/api/question/${this.question.slug}/reply/${this.items[index].id}`)
						.then(res => {
							this.items.splice(index,1)
						})
				})

				Echo.channel('deleteReplyChannel')
					.listen('DeleteReplyEvent', (e) => {
						for (let index = 0; index < this.items.length; index++) {
							if (this.items[index].id == e.id) {
								this.items.splice(index, 1)
							}
						}	
					})
			}
		}
	}
</script>