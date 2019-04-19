<template>
	<div>
		<div id="header">
			<div class="nav">
				<!-- logo -->
				<div class="h-logo">
					<router-link to="/store/product"></router-link>
				</div>
				<!-- 搜索栏 -->
				<div class="search-bar">
					<form @focusin="kisShow=true" @focusout="kisShow=false">
						<input type="text" placeholder="氧气耳机" v-model="kw" @keydown.enter="kwsearch()">
					</form>
					<div class="search-content" v-if="kisShow">
						<h4>热门搜索</h4>
						<ul v-for="val in hotSearch">
							<li><router-link :to="'/store/search/'+val">{{val}}</router-link></li>
						</ul>
						<h4 v-if="JSON.stringify(hisSearch)!='{}'">最近搜索</h4>
						<ul v-for="(val,k) in hisSearch">
							<li><router-link :to="'/store/search/'+k">{{k}}</router-link></li>
						</ul>
					</div>
				</div>
				<!-- 购物车 -->
				<div class="cart-icon">
					<a href="#" @click.prevent="goCart()">
						<span>{{cartCount}}</span>
					</a>
				</div>
				<!-- 用户头像等 -->
				<div :class="bgimg" @mouseover="listshow()" @mouseleave="listhide()" v-if="isLogin">
					<img src="../assets/img/header/userpic/18929192184177352.jpg" alt="用户头像">
					<ul class="hide-menu" v-if="uisShow">
						<li>
							<a href="#">
								<em class="order"></em>
								我的订单
								<span></span>
							</a>
						</li>
						<li>
							<a href="#">
								<em class="cupon-icon"></em>
								我的优惠券
								<span></span>
							</a>
						</li>
						<li>
							<a href="#">
								<em class="address"></em>
								我的收货地址
								<span></span>
							</a>
						</li>
						<li>
							<a href="https://music.163.com/">
								<em class="mainside"></em>
								网易云音乐首页
								<span></span>
							</a>
						</li>
						<li class="logout-border" @click.prevent="logout()">
							<a href="#">
								<em class="logout"></em>
								退出
								<span></span>
							</a>
						</li>
					</ul>
					<i class="hide-arr" v-if="uisShow"></i>
				</div>
				<div :class="bgimg" @mouseover="listshow()" @mouseleave="listhide()" v-if="!isLogin">
					<div class="login">登录</div>
					<ul class="hide-menu" v-if="uisShow" @click.prevent="lbshow=true">
						<li>
							<a href="#">
								<em class="phone"></em>
								手机号登录
								<span></span>
							</a>
						</li>
						<li>
							<a href="#">
								<em class="wechat"></em>
								微信登录
								<span></span>
							</a>
						</li>
						<li>
							<a href="#">
								<em class="qq"></em>
								QQ登录
								<span></span>
							</a>
						</li>
						<li>
							<a href="#">
								<em class="sina"></em>
								新浪微博登录
								<span></span>
							</a>
						</li>
						<li>
							<a href="#">
								<em class="netease"></em>
								网易邮箱账号登录
								<span></span>
							</a>
						</li>
					</ul>
					<i class="hide-arr" v-if="uisShow"></i>
				</div>
			</div>
			<div class="bottom-line" ></div>
			<!-- 登录框 -->
			<div class="loginbox" v-if="lbshow">
				<h3>请登录</h3>
				<p>用户名：<input type="text" v-model="uname"></p>
				<p>密码：<input type="password" v-model="upwd"></p>
				<br>
				<button @click="userLogin()">登录</button>
				<span class="closelogin" @click="lbshow=false"></span>
			</div>
		</div>
	</div>
</template>

<script>
	import axios from 'axios'
	
	export default {
	  data: function () {
	    return {
			kisShow:false,
			uisShow: false,
			lbshow:false,
			uname:"siyongbo",
			upwd:"900427",
			bgimg: "user-item arr-d",
			kw:"",
			hotSearch:["耳机","经典红","乐器","蓝牙","漫威"],
			hisSearch:{}
		}
	  },
	  computed:{
		  isLogin(){
			  return this.$store.state.isLogin
		  },
		  cartCount(){
			  if(sessionStorage.getItem("cart_count")){
				  this.$store.commit("countNum",sessionStorage.getItem("cart_count"));
			  }
			  return this.$store.state.cartCount
		  },
		  uid(){
			  if(sessionStorage.getItem("user_id")){
			  	this.$store.commit("userId",sessionStorage.getItem("user_id"));
			  }
			  return this.$store.state.uid;
		  }
	  },
	  methods: {
		  listshow(){
			  this.uisShow=true;
			  this.bgimg="user-item arr-u";
		  },
		  listhide(){
			  this.uisShow=false;
			  this.bgimg="user-item arr-d";
		  },
		  kwsearch(){
				  var con=this.kw;
				  this.$router.push("/store/search/"+con);
				  this.hisSearch[con]=1;
		  },
		  goCart(){
		  			  this.$router.push("/store/cart/"+this.uid);
		  },
		  userLogin(){
			  var url="http://127.0.0.1/163store/src/assets/data/signin.php";
			  url+="?uname="+this.uname+"&upwd="+this.upwd;
			  axios.get(url).then((res)=>{
				  if(res.data.code==0){
					  alert("登录失败");
				  }else{
					  this.lbshow=false;
					  var count=res.data.cartCount;
					  this.$store.commit("countNum",count);
					  this.$store.commit("userId",res.data.uid);
					  location.reload();
				  }
			  }).catch(function(err){
				  console.log(err);
			  })
		  },
		  logout(){
			  this.$store.commit("countNum",null);
			  this.$store.commit("userId",null);
			  location.reload();
		  }
	  },
	  watch: {},
	  props: {}
	}
</script>

<style scoped>
	@import	'../assets/css/header.css';
</style>
