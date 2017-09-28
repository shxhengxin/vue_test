
/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');
window.Vue = require('vue');
import VueRouter from 'vue-router'
import router from './router'
import  App from './components/App'

Vue.use(VueRouter)
/**
 * 注册全局组件
 */
Vue.component('app',App)

const app = new Vue({
    el: '#app',
    router
});
