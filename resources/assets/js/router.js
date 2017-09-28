import VueRouter from 'vue-router'
let routes = [
    {
        path:'/',
        name:'home',
        component: require('./components/pages/Home.vue')
    },

    {
        path:'/posts/:id',
        name:'posts',
        component: require('./components/posts/Post.vue')
    },
    {
        path:'/register',
        name:'register',
        component: require('./components/register/Register.vue')
    },
    {
        path:'/login',
        name:'login',
        component: require('./components/login/Login.vue')
    },

];


export default new VueRouter({
    mode:'history',

    routes
})