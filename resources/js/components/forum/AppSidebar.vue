<template>
	<v-card>
    	<v-toolbar color="indigo" dark dense class="mt-2">
      		<v-toolbar-title>Categories</v-toolbar-title>
    	</v-toolbar>

    	<v-list>
	      <v-list-item
	        v-for="category in categories"
	        :key="category.id"
	        @click="showQuestions(category.name)"
	      >
	      
	        <v-list-item-content>
	          <v-list-item-title v-text="category.name"></v-list-item-title>
	        </v-list-item-content>

	      </v-list-item>
	    </v-list>
	</v-card>
</template>

<script>
	export default {
		data() {
			return {
				categories: {}
			}
		},
		created() {
			axios.get('/api/category')
				.then(res => this.categories = res.data.data)
				.catch(err => console.log(err.response.data))
		},
		methods: {
			showQuestions(category) {
				EventBus.$emit('showCategoryQuestions', category)
			}
		}
	}
</script>