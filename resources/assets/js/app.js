
/**
 * First we will load all of this project's JavaScript dependencies which
 * include Vue and Vue Resource. This gives a great starting point for
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

import router from './routes';


/**
register compoments
 */

import Notification from './components/Notification.vue';
import Pagination from './components/Pagination.vue';
import Landing from './components/Landing.vue';

new Vue({
    el: '#app',
    data:{
        landingApproveList: [],
        languages: [],

    },
    router,
    components: { Notification,Pagination, Landing},
    mounted() {
        axios.get('/api/templates/approved').then(response => this.landingApproveList = response.data);
        axios.get('/api/templates/langauges')
            .then(response => this.languages = response.data.response.languages);

    }

});