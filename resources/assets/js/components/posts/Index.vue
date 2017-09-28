<template>
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">
                    文章首页列表
                    <input type="text" class="form-control navbar-form navbar-right search"
                           v-model="q"
                           @keyup.enter="show()"
                           name="q" placeholder="搜索"
                           required >
                </div>
                <div class="panel-body">
                    <span v-if="search">
                    <div class="bs-callout bs-callout-danger" v-for="post in posts " :key="post.id" >
                        <h4><router-link :to="{ name:'posts',params:{id:post.id} }">{{post.title}}</router-link></h4>
                        <p>{{post.body}}</p>
                    </div>
                    </span>

                    <span v-if="list">
                     <div class="bs-callout bs-callout-danger" v-for="post in posts" :key="post.id" >
                           <h4><router-link :to="{ name:'posts',params:{id:post.id} }">{{post.title}}</router-link></h4>
                           <p>{{post.body}}</p>
                     </div>
                    </span>
                </div>
            </div>

           <nav v-if="list">
                <ul class="pagination">
                    <li v-if="pagination.current_page > 1">
                        <a  aria-label="Previous"
                           @click.prevent="changePage(pagination.current_page - 1)">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <li v-for="page in pagesNumber"
                        v-bind:class="[ page == isActived ? 'active' : '']">
                        <a @click.prevent="changePage(page)">{{ page }}</a>
                    </li>
                    <li v-if="pagination.current_page < pagination.last_page">
                        <a  aria-label="Next"
                           @click.prevent="changePage(pagination.current_page + 1)">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</template>

<script>

    export default {
        data() {
            return {
                list:true,
                search:false,
                posts : [],
                q:'',
                offset:4,
                pagination:{
                    total: 0,
                    per_page: 7,
                    from: 1,
                    to: 0,
                    current_page: 1
                }
            }
        },

        computed: {
            isActived: function () {
                return this.pagination.current_page;
            },
            pagesNumber: function () {
                if (!this.pagination.to) {
                    return [];
                }
                var from = this.pagination.current_page - this.offset;
                if (from < 1) {
                    from = 1;
                }
                var to = from + (this.offset * 2);
                if (to >= this.pagination.last_page) {
                    to = this.pagination.last_page;
                }
                var pagesArray = [];
                while (from <= to) {
                    pagesArray.push(from);
                    from++;
                }
                return pagesArray;
            }
        },
        mounted(){
          this.fetchPost(this.pagination.current_page);
        },
        methods:{
            fetchPost:function(page){

                axios.get('/api/post?page='+page).then(response => {
                    this.posts = response.data.data.data
                    this.pagination = response.data.pagination
                })
            },
            changePage:function(page){
                console.log(page);
                this.pagination.current_page = page;
                this.fetchPost(page);
            },
            show:function(){
                let formData = {
                    q:this.q,
                }
                axios.post('/api/search',formData).then(response=>{
                    this.posts = response.data.data
                    this.list = false
                    this.search = true
                    this.q = ''
                });
            },
        },
    }
</script>

