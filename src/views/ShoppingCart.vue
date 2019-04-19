<template>
	<div class="g-bd g-bd-home">
		<side-menu></side-menu>
		<div class="m-bread">
			<div class="block"><span>购物车</span></div>
		</div>
		<div id="g-main" class="ma">
			<!-- 购物车列表 -->
			<div class="n-cart">
				<!-- 表头 -->
				<div class="f-cb s-fc4 head">
					<div class="check f-fl">
						<i class="checkbox u-checkbox"></i>
					</div>
					<div class="cnt f-fl">
						<div class="coverwrap f-fl s-fc333">全选</div>
						<div class="product f-fl">商品</div>
						<div class="pri1 f-fl f-tc">金额</div>
						<div class="num f-fl f-tc">数量</div>
						<div class="pri2 f-fl f-tc">小计</div>
						<div class="man f-fl">操作</div>
					</div>
				</div>
				<ul>
					<!-- 标题行 -->
					<li class="f-cb s-fc4 first">
						<div class="f-fl product">全部商品&nbsp;(&nbsp;2&nbsp;)&nbsp;</div>
						<div class="f-fr f-mgr20">
							<div class="f-fl icon"><i></i></div>
							<div class="f-fl txt s-fc333">
								全场满<em class="s-fcTheme">¥119</em>免运费
							</div>
						</div>
					</li>
					<!-- 商品行 -->
					<li class="f-cb" v-for="(val,i) in products">
						<div class="check f-fl">
							<i class="checkbox u-checkbox"></i>
						</div>
						<div class="cnt f-fl">
						  <!-- 商品图 -->
							<div class="coverwrap f-fl">
								<div class="cover f-bd2">
									<router-link :to="'/store/detail/'+val.product_id">
										<img :src="val.ipic">
									</router-link>
								</div>
							</div>
							<!-- 商品名规格 -->
							<div class="msg f-fl">
								<router-link :to="'/store/detail/'+val.product_id">
									<p class="tit f-thide">{{val.title}}</p>
								</router-link>
								<p class="sku s-fc4 f-thide">{{val.spec}}</p>
							</div>
							<!-- 单价 -->
							<div class="price f-fl f-tc">¥<em>{{parseFloat(val.price)}}</em></div>
							<!-- 数量条 -->
							<div class="ctrl f-fl f-pr f-tc">
								<div class="u-counter f-fl number" :data-index="i">
									<a href="#" ref="btn" class="btn" @click.prevent="countMinus($event)">
										<i class="u-icn u-icn-27"></i>
									</a>
									<span class="tot">
										<input type="text" class="text f-fs1" v-model="val.count">
									</span>
									<a href="#" class="btn" @click.prevent="countAdd($event)">
										<i class="u-icn u-icn-28"></i>
									</a>
								</div>
							</div>
							<!-- 单项总价 -->
							<div class="price line f-fl f-tc">¥{{parseFloat(val.price)*val.count}}</div>
							<!-- 删除键 -->
							<div class="delete f-fl"></div>
						</div>
					</li>
					<!-- 最终结算行 -->
					<li class="bottom" id="bottom" style="position: static; z-index: 1; bottom: 0px;">
						<div class="f-cb s-fc4">
							<div class="check f-fl">
								<i class="checkbox u-checkbox"></i>
							</div>
							<div class="f-fl">
								<div class="coverwrap f-fl s-fc333">全选</div>
								<div class="product f-fl">已选择 <em class="s-fcTheme">2</em> 件商品</div>
							</div>
							<div class="paybtn f-fr z-dis">结算</div>
							<div class="f-fr">
								<span class="s-fc4">
									差119元免运费&nbsp;|&nbsp;
								</span>
								<span class="s-fc1">合计&nbsp;:&nbsp;</span>
								<span class="f-fs20 s-fcTheme">
									¥<em>0.00</em>
								</span>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<!-- 热门推荐 -->
			<div class="mid-border">
				<span class="mid-txt2">热门推荐</span>
			</div>
			<m-product start="0" end="8"></m-product>
		</div>
		
	</div>
</template>

<script>
	import SideMenu from '../components/SideMenu.vue'
	import Mproduct from '../components/Mproduct.vue'
	import axios from 'axios'
	
	export default {
	  name: '',
	  data: function () {
	    return {
				uid:0,
				products:[]
			}
	  },
	  computed: {},
	  components: {
			'side-menu':SideMenu,
			'm-product':Mproduct
		},
	  methods: {
			loadCart(uid){
				var url=`http://127.0.0.1/163store/src/assets/data/cart/getCart.php?uid=${uid}`;
				axios.get(url).then((res)=>{
					var data=res.data;
					for(var i=0;i<data.length;i++){
						this.products.push(data[i]);
						this.products[i].ipic=require("@/"+data[i].ipic);
					}
				}).catch(function(err){
					console.log(err);
				})
			},
			countAdd(e){
				var el=e.currentTarget;
				var i=el.parentElement.dataset.index;
				this.products[i].count++;
				var btn=this.$refs.btn[i];
				btn.classList.remove("btn-dis");
				var url="http://127.0.0.1/163store/src/assets/data/cart/updateCart.php"
				url+="?iid="+this.products[i].iid+"&count="+this.products[i].count;
				axios.get(url).then((res)=>{
					this.$store.commit("countNum",res.data);
				}).catch(function(err){
					console.log(err);
				})
			},
			countMinus(e){
				var el=e.currentTarget;
				var i=el.parentElement.dataset.index;
				if(this.products[i].count>1){
					 this.products[i].count--;
				}
				if(this.products[i].count==1){
					var btn=this.$refs.btn[i];
					btn.classList.add("btn-dis");
				}
				var url="http://127.0.0.1/163store/src/assets/data/cart/updateCart.php"
				url+="?iid="+this.products[i].iid+"&count="+this.products[i].count;
				axios.get(url).then((res)=>{
					this.$store.commit("countNum",res.data);
				}).catch(function(err){
					console.log(err);
				})
			}
		},
		created(){
		    this.uid=this.$route.params.uid;
		    this.loadCart(this.uid);
		},
	  watch: {},
	  props: []
	}
</script>

<style scoped>
	@import url("../assets/css/shoppingcart.css");
</style>
