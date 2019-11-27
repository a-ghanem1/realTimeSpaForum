
require('./bootstrap');
window.Vue = require('vue');

import vuetify from './vuetify/';
import router from './router/router.js';
import User from './Helpers/User.js';

window.User = User;
window.EventBus = new Vue();

Vue.component('AppHome', require('./components/AppHome.vue').default);

const app = new Vue({
    el: '#app',
    vuetify,
    router
});