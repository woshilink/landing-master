<template>
    <div>
        <nav aria-label="Page navigation">
            <ul class="pagination">
                <li v-bind:class="{'disabled' : pagination.current == 1}">
                    <a href="#" aria-label="Previous" @click.prevent="page(pagination.current -1)">
                        <span aria-hidden="true">Previous</span>
                    </a>
                </li>
                <li v-if="pagination.current >= 3">
                    <a href="#" aria-label="First" @click.prevent="page(1)">
                        <span aria-hidden="true">1</span>
                    </a>
                </li>

                <li v-if="pagination.total > 5 && pagination.current > 3 && pagination.current != 1" class="disabled">
                    <a href="#" aria-label="..." @click.prevent="">
                        <span aria-hidden="true">...</span>
                    </a>
                </li>
                <li v-if="pagination.current > (pagination.total-3) && pagination.total > 5">
                    <a href="#" aria-label="First" @click.prevent="page(pagination.total -4)">
                        <span aria-hidden="true">{{ pagination.total -4 }}</span>
                    </a>
                </li>
                <li v-if="pagination.current > (pagination.total-2) && pagination.total > 4">
                    <a href="#" aria-label="First" @click.prevent="page(pagination.total -3)">
                        <span aria-hidden="true">{{ pagination.total -3 }}</span>
                    </a>
                </li>
                <li v-if="pagination.current > (pagination.total-1) && pagination.total > 3">
                    <a href="#" aria-label="First" @click.prevent="page(pagination.total -2)">
                        <span aria-hidden="true">{{ pagination.total -2 }}</span>
                    </a>
                </li>


                <li v-if="
                    pagenumber == (pagination.current - 1)
                    || pagenumber == (pagination.current + 1)
                    || pagenumber == pagination.current"
                    v-for="pagenumber in pagination.total" v-bind:class="{'active' : pagination.current == pagenumber}">
                    <a href="#" @click.prevent="page(pagenumber)">{{ pagenumber }}</a>
                </li>

                <li v-if="pagination.current <2 && pagination.total > 3">
                    <a href="#" aria-label="First" @click.prevent="page(3)">
                        <span aria-hidden="true">3</span>
                    </a>
                </li>
                <li v-if="pagination.current < 3 && pagination.total > 4">
                    <a href="#" aria-label="First" @click.prevent="page(4)">
                        <span aria-hidden="true">4</span>
                    </a>
                </li>
                <li v-if="pagination.current < 4 && pagination.total > 5">
                    <a href="#" aria-label="First" @click.prevent="page(5)">
                        <span aria-hidden="true">5</span>
                    </a>
                </li>
                <li v-if="pagination.total > 5 && pagination.current < (pagination.total - 2)" class="disabled">
                    <a href="#" aria-label="..." @click.prevent="">
                        <span aria-hidden="true">...</span>
                    </a>
                </li>
                <li v-if="pagination.current < (pagination.total - 1) && pagination.current != pagination.total ">
                    <a href="#" aria-label="Firsr" @click.prevent="page(pagination.total)">
                        <span aria-hidden="true">{{pagination.total}}</span>
                    </a>
                </li>
                <li v-bind:class="{'disabled' : pagination.current == pagination.total}">
                    <a href="#" aria-label="Next"  @click.prevent="page(pagination.current + 1)">
                        <span aria-hidden="true">Next</span>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
</template>


<script>
    export default {
        props: ['pagination'],
        methods:{
            page(pagenumber){
                Event.$emit('set-page', pagenumber);
            },
        },
    }
</script>