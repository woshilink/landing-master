{extends file="base/admin-base.tpl"}

{block name=title}
    {$brand|capitalize} {$product|capitalize} {* Editable title of landing pages *}
{/block}

{block name="head"}

    <style>
        div.dataTables_wrapper div.dataTables_filter {
            text-align: right;
        }
        div.dataTables_wrapper div.dataTables_paginate {
            margin: 0;
            white-space: nowrap;
            text-align: right;
        }
    </style>
{/block}
{block name=body}
    <div id="root">
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
                                                <select name="landing-table_length" aria-controls="landing-table" class="form-control input-sm" v-model="itemsPerPage" @click="refreshPageNumber()" >
                                                    <option value="10">10</option>
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
                                                <input type="search" name="query" class="form-control input-sm" placeholder="" @keyup="search()" aria-controls="landing-table" v-model="searchQuery">
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <nav aria-label="Page navigation">
                                            <ul class="pagination pull-right">

                                                <li>
                                                    <a href="#" aria-label="Previous" @click="setPreviousPage()">
                                                        <span aria-hidden="true">Previous</span>
                                                    </a>
                                                </li>
                                                <li v-if="currentPage >= 3">
                                                    <a href="#" aria-label="First" @click="setPage(1)">
                                                        <span aria-hidden="true">1</span>
                                                    </a>
                                                </li>

                                                <li v-if="totalPages > 5 && currentPage > 3 && currentPage != 1">
                                                    <a href="#" aria-label="...">
                                                        <span aria-hidden="true">...</span>
                                                    </a>
                                                </li>
                                                <li v-if="currentPage > (totalPages-3) && totalPages > 5">
                                                    <a href="#" aria-label="First" @click="setPage(totalPages -4)">
                                                        {literal}<span aria-hidden="true">{{ totalPages -4 }}</span>{/literal}
                                                    </a>
                                                </li>
                                                <li v-if="currentPage > (totalPages-2) && totalPages > 4">
                                                    <a href="#" aria-label="First" @click="setPage(totalPages -3)">
                                                        {literal}<span aria-hidden="true">{{ totalPages -3 }}</span>{/literal}
                                                    </a>
                                                </li>
                                                <li v-if="currentPage > (totalPages-1) && totalPages > 3">
                                                    <a href="#" aria-label="First" @click="setPage(totalPages -2)">
                                                        {literal}<span aria-hidden="true">{{ totalPages -2 }}</span>{/literal}
                                                    </a>
                                                </li>

                                                {literal}
                                                    <li v-if="
                                                        pageNumber == (currentPage - 1)
                                                        || pageNumber == (currentPage + 1)
                                                        || pageNumber == currentPage"
                                                        v-for="pageNumber in totalPages" v-bind:class="{'active' : currentPage == pageNumber}">
                                                        <a href="#" @click="setPage(pageNumber)">{{ pageNumber }}</a>
                                                    </li>
                                                {/literal}
                                                <li v-if="currentPage <2 && totalPages > 3">
                                                    <a href="#" aria-label="First" @click="setPage(3)">
                                                        <span aria-hidden="true">3</span>
                                                    </a>
                                                </li>
                                                <li v-if="currentPage < 3 && totalPages > 4">
                                                    <a href="#" aria-label="First" @click="setPage(4)">
                                                        <span aria-hidden="true">4</span>
                                                    </a>
                                                </li>
                                                <li v-if="currentPage < 4 && totalPages > 5">
                                                    <a href="#" aria-label="First" @click="setPage(5)">
                                                        <span aria-hidden="true">5</span>
                                                    </a>
                                                </li>
                                                <li v-if="totalPages > 5 && currentPage < (totalPages - 2)">
                                                    <a href="#" aria-label="...">
                                                        <span aria-hidden="true">...</span>
                                                    </a>
                                                </li>
                                                <li v-if="currentPage < (totalPages - 1) && currentPage != totalPages ">
                                                    <a href="#" aria-label="Firsr" @click="setPage(totalPages)">
                                                        <span aria-hidden="true">{literal}{{totalPages}}{/literal}</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#" aria-label="Next"  @click="setNextPage()">
                                                        <span aria-hidden="true">Next</span>
                                                    </a>
                                                </li>

                                            </ul>
                                        </nav>
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
                                            {literal}
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
                                            {/literal}
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
                                                        <span class="label label-primary">{literal}{{ landingList.length }}{/literal} Templates</span>
                                                    </h4>
                                                </li>
                                            </ul>
                                        </nav>

                                    </div>
                                   <div class="col-xs-7">
                                       <nav aria-label="Page navigation">
                                           <ul class="pagination pull-right">

                                               <li>
                                                   <a href="#" aria-label="Previous" @click="setPreviousPage()">
                                                       <span aria-hidden="true">Previous</span>
                                                   </a>
                                               </li>
                                               <li v-if="currentPage >= 3">
                                                   <a href="#" aria-label="First" @click="setPage(1)">
                                                       <span aria-hidden="true">1</span>
                                                   </a>
                                               </li>

                                               <li v-if="totalPages > 5 && currentPage > 3 && currentPage != 1">
                                                   <a href="#" aria-label="...">
                                                       <span aria-hidden="true">...</span>
                                                   </a>
                                               </li>
                                               <li v-if="currentPage > (totalPages-3) && totalPages > 5">
                                                   <a href="#" aria-label="First" @click="setPage(totalPages -4)">
                                                       {literal}<span aria-hidden="true">{{ totalPages -4 }}</span>{/literal}
                                                   </a>
                                               </li>
                                               <li v-if="currentPage > (totalPages-2) && totalPages > 4">
                                                   <a href="#" aria-label="First" @click="setPage(totalPages -3)">
                                                       {literal}<span aria-hidden="true">{{ totalPages -3 }}</span>{/literal}
                                                   </a>
                                               </li>
                                               <li v-if="currentPage > (totalPages-1) && totalPages > 3">
                                                   <a href="#" aria-label="First" @click="setPage(totalPages -2)">
                                                       {literal}<span aria-hidden="true">{{ totalPages -2 }}</span>{/literal}
                                                   </a>
                                               </li>


                                               {literal}
                                                   <li v-if="
                                                        pageNumber == (currentPage - 1)
                                                        || pageNumber == (currentPage + 1)
                                                        || pageNumber == currentPage"
                                                       v-for="pageNumber in totalPages" v-bind:class="{'active' : currentPage == pageNumber}">
                                                       <a href="#" @click="setPage(pageNumber)">{{ pageNumber }}</a>
                                                   </li>
                                               {/literal}
                                               <li v-if="currentPage <2 && totalPages > 3">
                                                   <a href="#" aria-label="First" @click="setPage(3)">
                                                       <span aria-hidden="true">3</span>
                                                   </a>
                                               </li>
                                               <li v-if="currentPage < 3 && totalPages > 4">
                                                   <a href="#" aria-label="First" @click="setPage(4)">
                                                       <span aria-hidden="true">4</span>
                                                   </a>
                                               </li>
                                               <li v-if="currentPage < 4 && totalPages > 5">
                                                   <a href="#" aria-label="First" @click="setPage(5)">
                                                       <span aria-hidden="true">5</span>
                                                   </a>
                                               </li>
                                               <li v-if="totalPages > 5 && currentPage < (totalPages - 2)">
                                                   <a href="#" aria-label="...">
                                                       <span aria-hidden="true">...</span>
                                                   </a>
                                               </li>
                                               <li v-if="currentPage < (totalPages - 1) && currentPage != totalPages ">
                                                   <a href="#" aria-label="Firsr" @click="setPage(totalPages)">
                                                       <span aria-hidden="true">{literal}{{totalPages}}{/literal}</span>
                                                   </a>
                                               </li>
                                               <li>
                                                   <a href="#" aria-label="Next"  @click="setNextPage()">
                                                       <span aria-hidden="true">Next</span>
                                                   </a>
                                               </li>

                                           </ul>
                                       </nav>
                                   </div>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
        </div>
        {*End of landing page list area *}
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
                                            {literal}

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
                                            {/literal}

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
                                    <span class="label label-primary">Total:{literal}{{ dataList.length }}{/literal}</span>
                                </h4>

                            </div>
                        </div>
                    </div>


                </section>
            </div>

        </div>
    </div>
{/block}
{block name=footer}

    <script src="{url('/')}/src/js/vue/vue.js"></script>
    {*<script src="https://cdn.jsdelivr.net/vue.resource/1.3.1/vue-resource.min.js"></script>*}
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <script src="{url('/')}/src/js/jquery.dataTables.min.js"></script>
    <script src="{url('/')}/src/js/dataTables.bootstrap.min.js"></script>
    <script src="{url('/')}/admin-asset/portforlio/js/index.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.debug.js"></script>
    <script>
        var doc = new jsPDF();
        doc.text('Hello world!', 10, 10)
    </script>

{/block}

