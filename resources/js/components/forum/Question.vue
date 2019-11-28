<template>
  <v-card tile class="mt-2">
    <v-card-title>
    	<router-link :to="question.path">
    		{{ question.title }}
    	</router-link>
    </v-card-title>
    
    <v-card-subtitle>
    	{{ question.user }} said {{ question.created_at }}
    </v-card-subtitle>
    
    <v-card-text>
    	{{ question.body }}
	</v-card-text>
  </v-card>
</template>

<script>
	export default {
		props: ['question']
	}
</script>

<style>
    a {
        color: #000 !important;
    }
</style>