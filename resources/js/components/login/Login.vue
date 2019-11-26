<template>
	<v-form @submit.prevent="login">
		<v-container>
		  <v-row>

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
				>Login</v-btn>
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
					email: null,
					password: null
				},
			}
		},
		methods: {
			login() {
				User.login(this.form)
			}
		}
	}
</script>