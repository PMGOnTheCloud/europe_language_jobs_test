require('./bootstrap');

import Vue from 'vue';
import VueRouter from 'vue-router';

Vue.use(VueRouter);

const routes = [
    {
        path: '/dog/create',
        component: DogForm
    },
    {
        path: '*',
        redirect: 'dogs',
        component: DogList
    }
];

const router = new VueRouter({
    routes: routes
});


const app = new Vue([
    router
]).$mount('#app');
