<template>
   <div class="portfolio-view">
       <div class="col-md-9">
           <div class="row">
               <div class="col-xs-12">

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
                                       Search:
                                       <label>
                                           <input type="search" name="query" class="form-control input-sm" placeholder="" @keyup="" aria-controls="landing-table" >
                                       </label>
                                   </div>
                               </div>
                           </div>
                           <div class="row">
                               <div class="col-xs-12">
                                   <div class="pull-right">
                                       <Pagination v-if="totalPages" :pagination="pagination"></Pagination>
                                   </div>
                               </div>
                           </div>
                           <div class="row">
                               <div class="col-xs-12">
                                   <table id="landing-list-table" class="table">
                                       <thead>
                                       <tr>
                                           <th>Domain</th>
                                           <th>Product</th>
                                           <th>lp value</th>
                                           <th>Year</th>
                                           <th>Month</th>
                                           <th>Link</th>
                                           <th>Action</th>
                                       </tr>
                                       </thead>
                                       <tfoot>
                                       <tr>
                                           <th>omain</th>
                                           <th>Product</th>
                                           <th>lp value</th>
                                           <th>Year</th>
                                           <th>Month</th>
                                           <th>link</th>
                                           <th>Action</th>
                                       </tr>
                                       </tfoot>
                                       <tbody>

                                       <tr  class="lp-list" v-for="(list, index) in landingDisplayList">
                                           <td>{{ list.brand}}</td>
                                           <td>{{list.product}}</td>
                                           <td>{{list.lp}}</td>
                                           <td>{{list.startTime.year}}</td>
                                           <td>{{list.startTime.month}}</td>
                                           <td><a v-bind:href="list.link" target="_blank">{{list.link}}</a></td>
                                           <td>
                                               <div class="material-switch">
                                                   <input v-bind:id="list.index" v-bind:name="list.index" type="checkbox" v-model="key"  @click="addDataList()" v-bind:value="list.index"/>
                                                   <label v-bind:for="list.index" class="label-success"></label>
                                               </div>
                                           </td>
                                       </tr>

                                       </tbody>
                                   </table>
                               </div>
                           </div>

                           <div class="row">
                               <div class="col-sm-5">
                                   <nav aria-label="Page navigation">
                                       <ul class="pagination">
                                           <li>
                                               <h4>
                                                   <span class="label label-primary">{{ landingapprovelist.length }} Templates</span>
                                               </h4>
                                           </li>
                                       </ul>
                                   </nav>

                               </div>
                               <div class="col-xs-7">
                                   <div class="pull-right">
                                       <Pagination v-if="totalPages" :pagination="pagination"></Pagination>
                                   </div>

                               </div>
                           </div>


                       </div>
                   </div>
               </div>
           </div>
       </div>

       <div class="col-md-3">
           <div class="row">
               <section id="pdf-area">
                   <div class="panel panel-default">
                       <div class="content-box-header panel-heading">
                           <div class="panel-title ">Add to PDF</div>
                           <div class="panel-options">
                               <a href="#" data-rel="reload"><i class="glyphicon glyphicon-ok"></i></a>
                               <a href="#" data-rel="reload"><i class="glyphicon glyphicon-remove"></i></a>
                           </div>
                       </div>

                       <div class="panel-body">
                           <div class="row">
                               <div class="col-xs-12">
                                   <ul class="list-group">

                                       <li v-for="(data, index) in dataList" v-bind:value="data" class="list-group-item" >


                                           <div class="media">
                                               <div class="media-body">
                                                   <h4 class="media-heading">{{ data.lp }}</h4>
                                                   <h4>
                                                       <span class="label label-info">{{ data.brand }}</span>
                                                       <span class="label label-success">{{ data.product }}</span>
                                                   </h4>
                                               </div>
                                               <div class="media-right text-center">
                                                   <h5></h5>
                                               </div>
                                           </div>

                                           <ul class="list-group-submenu">
                                               <li class="list-group-submenu-item danger" @click="removeFromDataList(data.index)">
                                                   <h4>
                                                       <span class="glyphicon glyphicon-remove"></span>
                                                   </h4>
                                               </li>
                                           </ul>
                                       </li>
                                   </ul>
                               </div>
                           </div>
                       </div>
                       <div class="panel-footer">
                           <div class="btn btn-primary">
                               <i class="fa fa-save"></i>
                               Generate
                           </div>
                           <div class="list-total pull-right">
                               <h4>
                                   <span class="label label-primary">Total:{{ dataList.length }}</span>
                               </h4>

                           </div>
                       </div>
                   </div>


               </section>
           </div>

       </div>
   </div>


</template>

<script>
    import Pagination from './../components/Pagination.vue';
    export default {
        props: ['landingapprovelist' , 'languages'],
        components: {Pagination},
        data(){
            return{
                key: [],
                dataList: [],
                systemTemplates: [],
                templateStructure: [],
                products:['casino','live','lotto','poker','sport','sports-casino','vegas'],
                brand: '',
                pagination:{
                    perpage: 25,
                    current: 1,
                    total: '',
                }

            }
        },
        computed:{

            totalPages(){
                var totalnumber = Math.ceil(this.landingapprovelist.length / this.pagination.perpage);
                this.pagination.total = totalnumber;
                return totalnumber;
            },
            landingDisplayList(){
                var index = (this.pagination.current - 1) * this.pagination.perpage;
                var lindex = index +  parseInt(this.pagination.perpage);
                var displayList = [];

                displayList = this.landingapprovelist.slice(index,lindex)

                for(var i = 0; i < displayList.length; i++){
                    displayList[i]['index'] = index+i;
                }
                return  displayList;
            },

        },
        methods:{
            addDataList(){
                this.dataList = [];

                for(var i = 0; i < this.key.length; i++){
                    this.dataList.push(this.landingapprovelist[this.key[i]]);
                }

            },
            removeFromDataList(index){
                var indexFromKey = this.key.indexOf(index);
                console.log(indexFromKey);
                this.key.splice(indexFromKey,1);

                this.dataList = [];

                for(var i = 0; i < this.key.length; i++){
                    this.dataList.push(this.landingapprovelist[this.key[i]]);
                }
            },
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
                if(this.currentpage > this.totalpages){
                    this.currentpage = 1;
                }
            }
        },
        mounted() {
            axios.get('/api/templates/all').then(response => this.systemTemplates = response.data);
            Event.$on('set-page', this.setPage);

        }
    }
</script>
