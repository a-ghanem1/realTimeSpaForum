import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

import Login from '../components/auth/Login.vue'
import Signup from '../components/auth/Signup.vue'
import Logout from '../components/auth/Logout.vue'
import Forum from '../components/forum/Forum.vue'

const routes = [
	{ path: '/login', component: Login },
	{ path: '/signup', component: Signup },
	{ path: '/logout', component: Logout },
	{ path: '/forum', component: Forum, name: 'forum' },
]

const router = new VueRouter({
	mode: 'history',
	routes
})

export default router