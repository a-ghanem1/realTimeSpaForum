
require('./bootstrap');
window.Vue = require('vue');

import vuetify from './vuetify/';
import router from './router/router.js';
import User from './Helpers/User.js';
import VueSimplemde from 'vue-simplemde';
import 'simplemde/dist/simplemde.min.css';
import md from 'marked';

window.md = md;
window.User = User;
window.EventBus = new Vue();

Vue.component('vue-simplemde', VueSimplemde)
Vue.component('AppHome', require('./components/AppHome.vue').default);

const app = new Vue({
    el: '#app',
    vuetify,
    router
});