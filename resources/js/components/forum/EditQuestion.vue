<template>
	<v-card>
		<v-container fluid>
			<v-form @submit.prevent="update">
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
					<vue-simplemde preview-class="markdown-body" v-model="form.body" />
				</v-col>

				<v-col
			      cols="12"
			      md="12"
			    >
					<v-card-actions>
						<v-btn class="ma-2" color="orange" dark type="submit">Edit
				        	<v-icon dark right>mdi-pencil</v-icon>
				      	</v-btn>

						<v-btn class="ma-2" color="red" dark @click="cancel">Cancel
				        	<v-icon dark right>mdi-cancel</v-icon>
				      	</v-btn>

					</v-card-actions>	

				</v-col>
			  </v-row>
			</v-form>
		</v-container>
	</v-card>
</template>

<script>
	export default {
		props: ['question'],
		data() {
			return {
				form: { 
					title: null,
					body: null,
				}
			}
		},
		mounted() {
			this.form = this.question
		},
		methods: {
			cancel() {
				EventBus.$emit('cancelEditing')
			},
			update() {
				axios.put(`/api/question/${this.question.slug}`, this.form)
					.then(res => {
						this.cancel()
					})
					.catch(err => {
						console.log(err.response.data)
					})
			}
		}
	}
</script>