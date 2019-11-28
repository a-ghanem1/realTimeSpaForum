<template>
	
	<div v-if="question">
		<edit-question 
			:question=question
			v-if="editing"></edit-question>
	
		<show-question
			v-else
			:question=question
		></show-question>
	</div>
</template>

<script>
	import ShowQuestion from './ShowQuestion'
	import EditQuestion from './EditQuestion'

	export default {
		components: {
			ShowQuestion,
			EditQuestion
		},
		data() {
			return {
				question: null,
				editing: false
			}
		},
		created() {
			this.listen()

			this.getQuestion()
		},
		methods: {
			listen() {
				EventBus.$on('edit', () => {
					this.editing = true
				})

				EventBus.$on('cancelEditing', () => {
					this.editing = false
				})
			},

			getQuestion() {
				axios.get(`/api/question/${this.$route.params.slug}`)
				.then(res => this.question = res.data.data)
				.catch(err => console.log(err.response.data))
			}
		}
	}
</script>