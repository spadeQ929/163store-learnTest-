<template>
	<div>
		<side-menu></side-menu>
		<div class="g-bd g-bd-hasFooter">
			<div class="m-bread">
				<div class="block">
					<span><router-link to="/store/product">首页</router-link></span>
					<span class="pointer"><i></i>{{kw}}</span>
				</div>
			</div>
			<div id="g-main" class="ma">
				<div>
					<div class="m-product">
						<!-- 导航头部分 -->
						<div class="m-navtab j-fix">
							<div class="s-brdb1">
								<ul>
									<li>
										<a href="#" class="s-fc1" @click.prevent="priceorder('',$event)"><em>综合</em></a>
									</li>
									<li class="spoint"></li>
									<li>
										<a href="#" @click.prevent="priceorder('Asc',$event)"><em>价格低到高</em></a>
									</li>
									<li class="spoint"></li>
									<li>
										<a href="#" @click.prevent="priceorder('Desc',$event)"><em>价格高到低</em></a>
									</li>
								</ul>
							</div>
						</div>
						<!-- 中间商品 -->
						<ul class="list f-cb">
							<li v-for="(val,i) in sproducts">
								<div :data-index="i+1">
									<router-link :to="val.href" class="cover f-pr f-blk j-statistics">
										<img :src="val.pic" class="f-img">
										<span class="buying f-pa" v-if="val.limitsale==1"></span>
										<span class="spec f-pa" v-if="val.issale==1">
											<span class="origin f-pa">¥{{parseFloat(val.price)}}</span>
											<span class="cut f-pa"><del>¥{{parseFloat(val.orig)}}</del></span>
										</span>
									</router-link>
									<div class="cnt f-tc">
										<h3 class="f-thide2">
											<span class="tag tag-red" v-if="val.issale==1"><em>特价</em></span>
											<span class="tag tag-red" v-if="val.ishot==1"><em>热门</em></span>
											<router-link :to="val.href" target="_blank">{{val.details}}</router-link>
										</h3>
										<p class="txt f-thide">
											¥<em>{{parseFloat(val.price)}}</em>
										</p>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<div>
						<!-- 底部页面条 -->
						<div class="m-page ">
							<a href="javascript:;" class="zbtn zprv js-disabled" ref="priv" @click="privpage()"></a>
							<a href="javascript:;" class="zpgi " v-for="val in aCount" ref="num"  @click="loadspage($event)">{{val}}</a>
							<a href="javascript:;" class="zbtn znxt " ref="next" @click="nextpage()"></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	import axios from 'axios'
	import SideMenu from '../components/SideMenu.vue'
	
	export default {
	    data: function () {
			return {
				kw:"耳机",
				pno:1,
				pageCount:0,
				aCount:[],
				sproducts:[],
				url:"http://127.0.0.1/163store/src/assets/data/productindex/getProductsByKw.php?kw="
			}
	    },
	    components: {
			'side-menu':SideMenu
		},
	    methods: {
			loadsproduct(kw,pno){
				var url=this.url+kw+"&pno="+(pno-1);
				axios.get(url).then((res)=>{
					//console.log(res.data);
					var datas=res.data.products;
					this.pageCount=res.data.pageCount;
					this.sproducts=datas;
					for(var i=0;i<datas.length;i++){
						this.sproducts[i].pic=require("@/"+datas[i].pic);
					}
					
				}).catch(function(err){
					console.log(err);
				});
			},
			changestyle(){
				var divs=document.querySelectorAll("[data-index]");
				for(var div of divs){
					if(div.dataset.index!=0&&div.dataset.index%4==0){
						div.parentElement.style.paddingRight="0px";
					}
				}
			},
			loadspage(e){
				var el=e.currentTarget;
				this.pno=el.innerHTML;
			},
			privpage(){
				if(this.pno>1){
					this.pno--;
				}
			},
			nextpage(){
				if(this.pno<this.pageCount){
					this.pno++;
				}
			},
			priceorder(str,event){
				this.url="http://127.0.0.1/163store/src/assets/data/productindex/getProductsByKw"+str+".php?kw=";
				var el=event.currentTarget;
				var ela=document.querySelectorAll(".s-brdb1 a");
				for(var xd of ela){
					xd.classList.remove("s-fc1");
				}
				el.classList.add("s-fc1");
			}
	    },
		watch:{
			pno:function(){
				this.loadsproduct(this.kw,this.pno);
				if(this.pno==1){
					this.$refs.next.className="zbtn znxt";
					this.$refs.priv.className="zbtn zprv js-disabled";
				}else if(this.pno==this.pageCount){
					this.$refs.priv.className="zbtn zprv";
					this.$refs.next.className="zbtn znxt js-disabled";
				}else{
					this.$refs.next.className="zbtn znxt";
					this.$refs.priv.className="zbtn zprv";
				}
				for(var el of this.$refs.num){
					if(el.innerHTML==this.pno){
						el.className="zpgi js-selected";
					}else{
						el.className="zpgi";
					}
				}
			},
			url:function(){
				this.loadsproduct(this.kw,this.pno);
			}
		},
		created(){
			this.kw=this.$route.params.kw;
			this.loadsproduct(this.kw,this.pno);
		},
		beforeUpdate(){
			for(var j=0;j<this.pageCount;j++){
				this.aCount[j]=j+1;
			}
		},
		updated(){
			this.changestyle();
		}
	}
</script>

<style scoped>
	@import '../assets/css/search.css';
</style>
