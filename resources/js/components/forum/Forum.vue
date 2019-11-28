<template>
	<v-container fluid grid-list-md>
		<v-layout row wrap>
			<v-flex xs8>
				<v-toolbar color="cyan" dark dense class="mt-2">
		      		<v-toolbar-title>Questions</v-toolbar-title>
		    	</v-toolbar>
				<question
					v-for="question in questions"
					:key="question.path"
					:question=question
				></question>
			</v-flex>
			<v-flex xs4>
				<app-sidebar></app-sidebar>
			</v-flex>
		</v-layout>
	</v-container>
</template>

<script>
	import Question from './Question'
	import AppSidebar from './AppSidebar'

	export default {
		data() {
			return {
				questions: {}
			}
		},
		components: {
			Question,
			AppSidebar
		},
		created() {
			axios.get('api/question')
				.then(res => this.questions = res.data.data)
				.catch(err => console.log(err.response.data))
		}
	}
</script>