
/**
 * Vue is a modern JavaScript library for building interactive web interfaces
 * using reactive data binding and reusable components. Vue's API is clean
 * and simple, leaving you to focus on building your next great project.
 */

import Vue from 'vue';
import store from './store'
import VueRouter from 'vue-router';
import axios from 'axios';


window.Vue = require('vue');
Vue.use(VueRouter);

window.axios = require('axios');

window.Event = new Vue();

/**
 * We'll register a HTTP interceptor to attach the "CSRF" header to each of
 * the outgoing requests issued by this application. The CSRF middleware
 * included with Laravel will automatically verify the header's value.
 */

