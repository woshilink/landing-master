<template>
    <div class="landing">
        <div class="panel panel-default">
            <div class="content-box-header panel-heading">
                <div class="panel-title ">Approved Template List</div>
                <div class="panel-options">
                    <a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
                    <a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
                </div>
            </div>
            <div class="panel-body">
            <div class="row">
                <div class="col-sm-6">
                    <div class="dataTables_length" id="landing-table_length">
                        Show
                        <label >
                            <select name="landing-table_length" aria-controls="landing-table" class="form-control input-sm" v-model="itemsPerPage" @click="refreshPageNumber()" >
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
                        Search:
                        <label>
                            <input type="search" name="query" class="form-control input-sm" placeholder="" @keyup="search()" aria-controls="landing-table" >
                        </label>
                    </div>
                </div>

            </div>
                <!--End of row-->
                <div class="row">
                    <div class="col-xs-12">
                        <table id="landing-list-table" class="table">
                            <thead>
                                <tr>
                                    <th>Domain</th>
                                    <th>Product</th>
                                    <th>lp value</th>

                                    <th>Link</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tfoot>
                                <tr>
                                    <th>omain</th>
                                    <th>Product</th>
                                    <th>lp value</th>
                                    <th>link</th>
                                    <th>Action</th>
                                </tr>
                                </tfoot>
                                <tbody>

                                <tr  class="lp-list" v-for="(list, index) in landingDisplayList">
                                    <td>{{list.brand}}</td>
                                    <td>{{list.product}}</td>
                                    <td>{{list.lp}}</td>

                                    <td><a v-bind:href="list.link" target="_blank">{{list.link}}</a></td>
                                    <td>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- End of row -->
            </div>
        </div>
    </div>
</template>

<script>
    import axios from 'axios';

    export default {
        data(){
            return{
                itemsPerPage: 25,
                landingList: [],
                currentPage:1,
            };
        },
        computed:{
            totalPages(){
                totalnumber = Math.ceil(this.landingList.length / this.itemsPerPage);
                return totalnumber;
            },
            landingDisplayList(){
                var index = (this.currentPage - 1) * this.itemsPerPage;
                var lindex = index +  parseInt(this.itemsPerPage);
                var displayList = [];

                displayList = this.landingList.slice(index,lindex)

                for(var i = 0; i < displayList.length; i++){
                    displayList[i]['index'] = index+i;
                }
                return  displayList;
            },
        },
        methods:{
        },
        mounted() {
            axios.get('/api/templates/used').then(response => this.landingList = response.data);
        }
    }
</script>
