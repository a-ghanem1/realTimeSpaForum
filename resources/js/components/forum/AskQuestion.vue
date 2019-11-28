<template>
	<v-form @submit.prevent="create">
		<v-container>
		  <v-row>

		    <v-col
		      cols="12"
		      md="12"
		    >
		      <v-text-field
		        v-model="form.title"
		        label="Title"
		        type="text"
		        required
		      ></v-text-field>
		    </v-col>

		    <v-col
		      cols="12"
		      md="12"
		    >
				<v-autocomplete
				  v-model="form.category_id"
			      label="Category"
			      :items="categories"
			      item-text="name"
			      item-value="id"
			    ></v-autocomplete>			
			</v-col>

			<v-col
		      cols="12"
		      md="12"
		    >
				<vue-simplemde preview-class="markdown-body" v-model="form.body" />
			</v-col>

			<v-col
		      cols="12"
		      md="12"
		    >
				<v-btn
				  tile
				  color="success"
				  type="submit"
				  dark
				  large
				>Create</v-btn>

			</v-col>
		  </v-row>
		</v-container>
	</v-form>
</template>

<script>
	export default {
		data() {
			return {
				categories: {},
				form: {
					title: null,
					category_id: null,
					body: null
				},
				errors: {}
			}
		},
		created() {
			axios.get('/api/category')
				.then(res => this.categories = res.data.data)
				.catch(err => err.response.error)
		},
		methods: {
			create() {
				axios.post('/api/question', this.form)
					.then(res => this.$router.push(res.data.path))
					.catch(err => this.errors = err.response.data.error)
			}
		}
	}
</script>

<style>
	@import '~simplemde/dist/simplemde.min.css';
  	@import '~github-markdown-css';
</style>