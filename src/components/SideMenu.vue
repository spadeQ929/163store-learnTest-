<template>
	<div class="m-wrap">
		<div class="m-item m-unclick" style="cursor: pointer;" @click="tolow()">
			<span>查看<br>营业执照</span>
		</div>
		<div class="m-item m-unclick">
			<span>100%<br>正品</span>
		</div>
		<div class="m-item m-unclick">
			<span>七天无理<br>由退货</span>
		</div>
		<div class="m-item shopcar" @click="goCart()">
			<span>
				<i class="shop-icon"></i>
				<span class="pr">
					购物车
					<span class="shop-num">{{cartCount}}</span>
				</span>
			</span>
		</div>
		<div class="m-item kefu" @click="tokefu()">
			<i class="kefu-icon"></i>
			<span>客服</span>
		</div>
		<div class="m-item m-back" v-show="pagem" @click="totop()">
			<a href="#header"></a>
		</div>
	</div>
</template>

<script>
	export default {
	  data: function(){
	    return {
				pagem:false
			}
	  },
	  computed:{
		  cartCount(){
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
			tolow(){
				open("https://music.163.com/market/m/law","_self");
			},
			tokefu(){
				open("https://music.163.com/#/msg/m/private_detail?id=253335632&nickname=云音乐客服","kefu");
			},
			topshow(){
				let scrollY = window.pageYOffset || document.documentElement.scrollTop;
				if(scrollY>=300){
					this.pagem=true;
				}else{
					this.pagem=false;
		        }
		    },
			totop: function() {				// 回到顶部方法
				clearInterval(timer);
				var timer = setInterval(function() {
					let curHeight = document.documentElement.scrollTop || document.body.scrollTop;
					var now = curHeight;
					var speed = (0 - now) / 7;								// 随着高度减速
					speed = speed > 0 ? Math.ceil(speed) : Math.floor(speed);
					if (curHeight === 0) {							//当前高度为零,停止这次计时器
					  clearInterval(timer);
					}
					document.documentElement.scrollTop = curHeight + speed;			//直接给高度赋值,会调用needtotop方法
					document.body.scrollTop = curHeight + speed;				//谷歌的
					stop = false;
				}, 30);
			},
			goCart(){
						  this.$router.push("/store/cart/"+this.uid);
			}
	  },
	  mounted: function(){
         window.addEventListener('scroll', this.topshow);
      },
	  watch: {},
	  props: []
	}
</script>

<style scoped>
	@import '../assets/css/sidemenu.css';
</style>
