<template>
	<v-container grid-list-md>
		<v-layout row wrap>
			<v-flex xs8>
				<v-toolbar color="indigo" dark dense class="mt-2">
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
				questions: {},
				categoryName: ""
			}
		},
		components: {
			Question,
			AppSidebar
		},
		created() {
			this.categoryListenter()
			this.getQuesitons()
		},
		methods: {
			getQuesitons() {
				axios.get(`api/question/${this.categoryName ? this.categoryName : ""}`)
					.then(res => this.questions = res.data.data)
					.catch(err => console.log(err.response.data))
			},
			categoryListenter() {
				EventBus.$on('showCategoryQuestions', (categoryName) => {
					this.categoryName = categoryName
					this.getQuesitons()
				})
			}
		}
	}
</script>