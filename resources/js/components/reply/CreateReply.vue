<template>
	<div class="mt-3">
		<div class="mb-2 headline font-weight-regular">New Reply</div>
		<vue-simplemde preview-class="markdown-body" v-model="body" />
		<v-btn class="ma-2 mt-4" color="success" dark large @click="submit">Add
        	<v-icon dark right>mdi-plus</v-icon>
      	</v-btn>
	</div>
</template>

<script>
	export default {
		props: ['questionSlug'],
		data() {
			return {
				body: null
			}
		},
		methods: {
			submit() {
				axios.post(`/api/question/${this.questionSlug}/reply`, {body: this.body })
					.then(res => {
						this.body = ''
						EventBus.$emit('newReply', res.data)
						window.scrollTo(0,0)
					})
			}
		}
	}
</script>

<style>
	@import '~simplemde/dist/simplemde.min.css';
  	@import '~github-markdown-css';
</style>