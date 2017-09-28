<template>
<nav class="navbar navbar-default navbar-static-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navbar-collapse">
                <span class="sr-only">Toggle Navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <router-link to="/" class="navbar-brand"><a>Vue-SPA</a></router-link>
        </div>
        <div class="collapse navbar-collapse" id="app-navbar-collapse">
            <ul class="nav navbar-nav">
                <li><router-link to="/" class="navbar-brand"><a>文章</a></router-link></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><span>&nbsp;&nbsp;&nbsp;</span></li>

                    <li><router-link to="login" class="navbar-brand"><a>登录</a></router-link></li>
                    <li><router-link to="register" class="navbar-brand"><a>注册</a></router-link></li>

            </ul>
        </div>
    </div>
</nav>
</template>

<script>

    export default {

        methods:{



        }

    }
</script>


