import Vue from 'vue'
import Vuex from 'vuex'
import App from './App.vue'
import router from './router'
import './assets/css/init.css'

Vue.use(Vuex);
Vue.config.productionTip = false

const store=new Vuex.Store({
	state:{
		uid:0,
		isLogin:false,
		cartCount:0
	},
	getters:{},
	mutations:{
		countNum(state,num){
			if(num){
				sessionStorage.setItem("cart_count",num);
				sessionStorage.setItem("login_status",true);
				state.cartCount=num;
				state.isLogin=true;
			}else if(num==null){
				sessionStorage.clear();
				state.cartCount=0;
				state.isLogin=false;
			}
		},
		userId(state,num){
			if(num){
				sessionStorage.setItem("user_id",num);
				state.uid=num;
			}else if(num==null){
				sessionStorage.clear();
				state.uid=0;
			}
		}
	},
	actions:{}
})

new Vue({
  router,
	store,
  render: h => h(App)
}).$mount('#app')
