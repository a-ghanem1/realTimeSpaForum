<template>
	<v-container fluid grid-list-md>
		<v-layout row wrap>
			<v-flex xs8>
				<question
					v-for="question in questions"
					:key="question.path"
					:question=question
				></question>
			</v-flex>
			sidebar
		</v-layout>
	</v-container>
</template>

<script>
	import Question from './Question'

	export default {
		data() {
			return {
				questions: {}
			}
		},
		components: {
			Question
		},
		created() {
			axios.get('api/question')
				.then(res => this.questions = res.data.data)
				.catch(err => console.log(err.response.data))
		}
	}
</script>