import Vue from 'vue'
import Router from 'vue-router'
import Store from './views/Store.vue'
import Product from './views/Product.vue'
import Column from './views/Column.vue'
import Search from './views/Search.vue'
import Detail from './views/Detail.vue'
import ShoppingCart from './views/ShoppingCart.vue'

Vue.use(Router)

export default new Router({
	mode:'history',
    routes: [
	    {path:'/',component:Store,children:[
			{path:'/',component:Product},
			{path:'product',component:Product}
		]},
        {path:'/store',component:Store,children:[
			{path:'/',component:Product},
			{path:'product',component:Product},
			{path:'column',component:Column},
			{path:'search/:kw',component:Search},
			{path:'detail/:pid',component:Detail},
			{path:'cart/:uid',component:ShoppingCart}
		]}
   
  ]
})
