var apiURL = '/api/templates/approved';


var vm = new  Vue({

    el: '#root',

    data:{
        show: true,
        key: [],
        landingList: [],
        dataList: [],
        order: 1,
        searchQuery: '',
        currentPage:1,
        itemsPerPage: 10,
        resultCount: 0,
        pageNumber:1,
    },
    computed:{
        totalPages(){

            page = (this.landingList.length / this.itemsPerPage);
             totalnumber = Math.ceil(page);
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

        search(){
            this.fetchContent();

            var filterKey = this.searchQuery;
            list = this.landingList;

            $.each(list, function(value, key) {
                var found = $.inArray(filterKey,value);
                console.log(found);
            });

                var indexFromKey = this.landingList.indexOf(filterKey);

             return indexFromKey > -1 ?' Yes' : ' No';

            
        },
        setNextPage(){
            this.currentPage = this.currentPage + 1;
            if(this.currentPage >= this.totalPages){
                this.currentPage = this.totalPages;
            }
        },
        setPreviousPage(){
            this.currentPage = this.currentPage - 1;
            if(this.currentPage <= 1){
                this.currentPage = 1;
            }
        },
        addDataList(){
            this.dataList = [];


            for(var i = 0; i < this.key.length; i++){
                this.dataList.push(this.landingList[this.key[i]]);
            }

        },
        removeFromDataList(index){
            var indexFromKey = this.key.indexOf(index);
            console.log(indexFromKey);
            this.key.splice(indexFromKey,1);

            this.dataList = [];

            for(var i = 0; i < this.key.length; i++){
                this.dataList.push(this.landingList[this.key[i]]);
            }
        },
        setPage(pageNumber){
            this.currentPage = pageNumber;

        },
        refreshPageNumber(){
            if(this.currentPage > this.totalPages){
                this.currentPage = 1;
            }

        }
    },
    mounted() {
        axios.get('/api/templates/approved')
            .then(response => this.landingList = response.data);

    }

});


