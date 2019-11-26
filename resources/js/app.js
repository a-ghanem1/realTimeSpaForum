
require('./bootstrap');
window.Vue = require('vue');

import vuetify from './vuetify/';
import router from './router/router.js';

Vue.component('AppHome', require('./components/AppHome.vue').default);

const app = new Vue({
    el: '#app',
    vuetify,
    router
});