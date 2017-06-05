import Vue from 'vue';
import test from 'ava';
import landing from '../../resources/assets/js/views/templates/Landing.vue';

test('Should render correctly', t =>{
  t.is(landing.data().pagination.perpage, 25);
});
test('Should render correctly', t =>{
  t.is(landing.data().pagination.perpage, 25);
});