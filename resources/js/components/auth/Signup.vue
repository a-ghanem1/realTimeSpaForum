<template>
	<v-form @submit.prevent="signup">
		<v-container>
		  <v-row>

			<v-col
		      cols="12"
		      md="12"
		    >
		      <v-text-field
		        v-model="form.name"
		        label="Username"
		        type="text"
		        required
		      ></v-text-field>
		    	<p class="red--text" v-if="errors.name">{{ errors.name[0] }}</p>
		    </v-col>

		    <v-col
		      cols="12"
		      md="12"
		    >
		      <v-text-field
		        v-model="form.email"
		        label="E-mail"
		        type="email"
		        required
		      ></v-text-field>
		      <p class="red--text" v-if="errors.email">{{ errors.email[0] }}</p>
		    </v-col>

		    <v-col
		      cols="12"
		      md="12"
		    >
		      <v-text-field
		        v-model="form.password"
		        type="password"
		        label="Password"
		        required
		      ></v-text-field>
		      <p class="red--text" v-if="errors.password">{{ errors.password[0] }}</p>
		    </v-col>


		    <v-col
		      cols="12"
		      md="12"
		    >
		      <v-text-field
		        v-model="form.password_confirmation"
		        type="password"
		        label="Password Confirmation"
		        required
		      ></v-text-field>
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
				>Sign Up</v-btn>

				<router-link to="/login">
					<v-btn 
					tile 
					large
					dark
					color="primary"
					>Login</v-btn>
				</router-link>
			</v-col>
		  </v-row>
		</v-container>
	</v-form>
</template>

<script>
	export default {
		data() {
			return {
				form: {
					name: null,
					email: null,
					password: null,
					password_confirmation: null
				},
				errors: {}
			}
		},
		created() {
			if (User.loggedIn()) {
				this.$router.push({name: 'forum'})
			}
		},
		methods: {
			signup() {
		
				axios.post('/api/auth/signup', this.form)
					.then(res => {
						User.responseAfterLogin(res)
						this.$router.push({name: 'forum'})
					})
					.catch(err => {
						this.errors = err.response.data.errors
						console.log(this.errors)
					})
	
			}	
		}
	}
</script>