import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

import Login from '../components/auth/Login.vue'
import Signup from '../components/auth/Signup.vue'
import Logout from '../components/auth/Logout.vue'
import Forum from '../components/forum/Forum.vue'
import Read from '../components/forum/Read.vue'
import AskQuestion from '../components/forum/AskQuestion.vue'

const routes = [
	{ path: '/login', component: Login },
	{ path: '/signup', component: Signup },
	{ path: '/logout', component: Logout },
	{ path: '/forum', component: Forum, name: 'forum' },
	{ path: '/question/:slug', component: Read, name: 'read' },
	{ path: '/ask', component: AskQuestion },
]

const router = new VueRouter({
	mode: 'history',
	routes
})

export default router