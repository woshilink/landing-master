import VueRouter from 'vue-router';

let routes = [
    {
        path: '/',
        component: require('./views/Dashboard'),
    },
    {
        path: '/portforlio',
        component: require('./views/Portfolio')
    },
    {
        path: '/landing',
        component: require('./views/templates/Landing')
    },


];

export default new VueRouter({
   routes,
    linkActiveClass: 'current'
});