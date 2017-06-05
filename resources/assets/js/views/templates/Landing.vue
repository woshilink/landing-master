<template>
    <div class="landing-view">
        <div class="row">
            <div class="col-xs-10">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-6">
                                <h5>Templates List</h5>
                            </div>
                            <div class="col-sm-6">
                                <form class="form-inline pull-right">
                                    <div class="form-group">
                                        <select class="form-control">
                                            <option>Brand</option>
                                            <option v-for="(list, index) in templateStructure">{{ list.brand }}</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <select class="form-control">
                                            <option>Product</option>
                                            <option v-for="(product, index) in products">{{ product }}</option>
                                        </select>
                                    </div>
                                    <div class="form-group">

                                        <select class="form-control">
                                            <option>Language</option>
                                            <option v-for="(lang, index) in languages">{{ index }}</option>
                                        </select>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Update</button>
                                </form>

                            </div>

                        </div>
                    </div>



                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="dataTables_length" id="landing-table_length">
                                    Show
                                    <label >
                                        <select name="landing-table_length" aria-controls="landing-table" class="form-control input-sm" v-model="pagination.perpage" @click="refreshPageNumber()" >
                                            <option value="25">25</option>
                                            <option value="50">50</option>
                                            <option value="100">100</option>
                                        </select>
                                    </label>
                                    entries
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div id="landing-table_filter" class="dataTables_filter pull-right">
                                    lp Value:
                                    <label>
                                        <input type="search" name="query" class="form-control input-sm" placeholder="" @keyup="search()" aria-controls="landing-table" >
                                    </label>
                                </div>
                            </div>

                        </div>
                        <!--End of row-->
                        <div class="row">
                            <div class="col-xs-6 ">
                                <Pagination v-if="totalPages" :pagination="pagination"></Pagination>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <table id="landing-list-table" class="table">
                                    <thead>
                                    <tr>
                                        <th>Brand</th>
                                        <th>Product</th>
                                        <th>lp value</th>
                                        <th>Language</th>
                                        <th>Link</th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tfoot>
                                    <tr>
                                        <th>Brand</th>
                                        <th>Product</th>
                                        <th>lp value</th>
                                        <th>Language</th>
                                        <th>link</th>
                                        <th></th>
                                    </tr>
                                    </tfoot>
                                    <tbody>
                                    <tr  class="lp-list" v-for="(list, index) in templatesDisplayList">
                                        <td>{{ list.brand}}</td>
                                        <td>{{list.product}}</td>
                                        <td>{{list.lp}}</td>
                                        <td>{{list.lp}}</td>
                                        <td><a v-bind:href="list.link" target="_blank">{{list.link}}</a></td>
                                        <td>
                                            <div class="btn-group" role="group" aria-label="...">
                                                <button type="button" class="btn btn-success"><i class="glyphicon glyphicon-ok"></i></button>
                                                <button type="button" class="btn btn-danger"><i class="glyphicon glyphicon-trash"></i></button>
                                            </div>
                                        </td>
                                    </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- End of row -->
                        <div class="row">
                            <div class="col-xs-6 ">
                                <Pagination v-if="totalPages" :pagination="pagination"></Pagination>
                            </div>
                            <div class="col-xs-6 ">
                                <nav aria-label="Page navigation">
                                    <ul class="pagination pull-right">
                                        <li>
                                            <h4>
                                                <span class="label label-primary">Total {{ templates.length }} Pages</span>
                                            </h4>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End of col-md-10 -->
            <div class="col-md-2">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-sm-12 ">
                                        <div class="count"> {{ templates.length }}</div>
                                        <h4>Template</h4>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <h4> 10 </h4>
                                <h4>Not approve</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End of column col-md-3--->
        </div>
    </div>
</template>
<style>
    .count{
        font-size: 38px;
        font-weight: 700;
        line-height: 0.65857;
    }
</style>
<script>
    import Pagination from './../../components/Pagination.vue';
    export default {
        props: ['languages'],
        components: {Pagination},
        data(){
            return{
                templateStructure: [],
                products:['casino','live','lotto','poker','sport','sports-casino','vegas'],
                brand: '',
                pagination:{
                    perpage: 25,
                    current: 1,
                    total: '',
                },
                templates: []

            }
        },
        computed:{

            totalPages(){
                var totalnumber = Math.ceil(this.templates.length / this.pagination.perpage);
                this.pagination.total = totalnumber;
                return totalnumber;
            },
            templatesDisplayList(){
                var index = (this.pagination.current - 1) * this.pagination.perpage;
                var lindex = index +  parseInt(this.pagination.perpage);
                var displayList = [];

                displayList = this.templates.slice(index,lindex)

                for(var i = 0; i < displayList.length; i++){
                    displayList[i]['index'] = index+i;
                }
                return  displayList;
            },

        },
        methods:{
            setPage(pagenumber){

                if(pagenumber > this.pagination.total){

                    this.pagination.current = this.pagination.total;
                }else if(pagenumber < 1){

                    this.pagination.current = 1;
                }else{
                    this.pagination.current = pagenumber;
                }

            },
            refreshPageNumber(){
                if(this.pagination.current > this.totalPages){
                    this.pagination.current = 1;
                }
            }
        },
        mounted() {
            axios.get('/api/templates/structure').then(response => this.templateStructure = response.data);
            axios.get('/api/templates/used').then(response => this.templates = response.data);
            Event.$on('set-page', this.setPage);

        }

    }
</script>
