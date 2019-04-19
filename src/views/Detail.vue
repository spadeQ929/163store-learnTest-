<template>
	<div>
		<side-menu></side-menu>
		<div class="g-bd g-bd-hasFooter">
			<!-- 首页导航 -->
			<div class="m-bread">
				<div class="block" id="headcontent">
					<span><router-link to="/store/product">首页</router-link></span>
					<span class="pointer"><i></i>{{detail.title}}</span>
					<div id="share" class="share f-fr" @click="shareShow()">分享</div>
				</div>
			</div>
			<!-- 主内容区 -->
			<div id="g-main" class="ma">
				<div id="module-root" class="n-detail">
					<!-- 图片与价格 -->
					<div class="f-cb" style="min-height:530px;">
						<!-- 图片区 -->
						<div class="n-display f-fl j-flag">
							<div class="pic f-pr">
								<div class="imgBox" @mouseenter="bigImgShow()" @mouseleave="bigImgHide()">
									<img class="img1 j-flag" :src="mdpic">
									<div class="smallmask" ref="smask" v-if="isBigimgShow"></div>
									<div class="supermask" ref="ssmask" @mousemove="superMask($event)"></div>
								</div>
								<div class="bigimgbox" ref="bigImgBox" v-if="isBigimgShow">
									<img :src="lgpic">
								</div>
								<span class="arrowleft"><i class="icn u-icn u-icn-arrowl"></i></span>
								<span class="arrowright"><i class="icn u-icn u-icn-arrowr"></i></span>
							</div>
							<div class="smnav ">
								<ul class="f-cb j-flag" ref="smList">
									<li v-for="(val,i) in pics" :data-index="i" @click="imgChange($event)">
										<img :src="val.sm">
									</li>
								</ul>
							</div>
						</div>
						<!-- 内容区 -->
						<div class="n-info f-fr j-flag">
							<div class="basic">
								<h2 class="f-ff2">{{detail.title}}</h2>
								<p class="sellpoint">{{detail.subtitle}}</p>
								<p class="price ">
									<span class="rmb">¥</span>
									<em class="j-flag">{{parseFloat(detail.price)}}</em>
								</p>
								<p class="s-fc3 salesinfo" style="left: 204px; top: 281px;">
									<em style="color:#cb3b3b;">
										<span class="j-flag" style="color:#cb3b3b;"></span>
									</em>
								</p>
								<!-- 优惠促销 -->
								<div class="m-coupons f-cb f-pr">
									<div class="title f-pr">促销: </div>
									<ul ref="couponList" @mouseenter="couponShow()" @mouseleave="couponHide()">
										<li>
											<span class="label">手慢无</span>
											<span class="">60元&nbsp;&nbsp;音耀节数码影音专享,</span>
											<span>无门槛</span><span class="s-fcLink f-hand">领券</span>
											<a href="javascript:;" class="f-fr all s-fc666">
												全部优惠券(6) 
												<i class="arr" id="coupon-arr"></i>
											</a>
										</li>
										<li>
											<span class="label">限时领取</span>
											<span class="">40元&nbsp;&nbsp;立减券,</span>
											<span>无门槛</span>
											<span class="s-fcLink f-hand">领券</span>
										</li>
										<li>
											<span class="label">全场通用</span>
											<span class="">10元&nbsp;&nbsp;音耀节活动券,</span>
											<span>满99元可用</span>
											<span class="s-fcLink f-hand">领券</span>
										</li>
										<li>
											<span class="label">全场通用</span>
											<span class="">30元&nbsp;&nbsp;音耀节活动券,</span>
											<span>满139元可用</span>
											<span class="s-fcLink f-hand">领券</span>
										</li>
										<li>
											<span class="label">全场通用</span>
											<span class="">50元&nbsp;&nbsp;音耀节活动券,</span>
											<span>满299元可用</span>
											<span class="s-fcLink f-hand">领券</span>
										</li>
										<li class="lst">
											<span class="label">全场通用</span>
											<span class="">100元&nbsp;&nbsp;音耀节活动券,</span>
											<span>满399元可用</span>
											<span class="s-fcLink f-hand">领券</span>
										</li>
									</ul>
								</div>
								<!-- 规格 -->
								<div class="j-newskuctn"> 
									<div class="j-flag">
										<div class="select select-time select-sku f-cb" id="sku-select-box-2001">
											<div class="title f-pr">
												<i class="u-icn u-icn-9"></i>
												<span class="qin">请选择</span>
												颜色 :
												<i class="u-icn u-icn-10"></i>
											</div>
											<ul class="f-cb">
												<li class="  f-pr  " v-for="(val,i) in specs" :data-did="i+1" @click="subChange($event)">
													<p class="f-ff2">{{val.spec}}</p>
												</li>
											</ul>
										</div>
									</div>
								</div>
								<!-- 购买数量 -->
								<div class="j-count"> 
									<div class="count f-mgt20 j-numcount ">
										<p class="number">数量 :</p>
										<div id="digital-counter-new">
											<div class="u-counter">
												<a href="#" class="btn btn-dis" @click.prevent="countMinus()" ref="btndis">
													<i class="u-icn u-icn-27"></i>
												</a>
												<span class="tot">
													<input type="text" v-model="count" class="text f-fs1">
												</span>
												<a href="#" class="btn" @click.prevent="countAdd()">
													<i class="u-icn u-icn-28"></i>
												</a>
											</div>
											<div style="margin-top:5px;left:-5px;display:none;" class="u-tips-err">
												<i class="f-ib"></i>
												请输入要购买的数量
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 服务 -->
							<div class="m-services">
								<p>服务 : </p>
								<div class="cnt" data-action="showService">
									<a class="service" v-for="val in detail.servise">{{val}}</a>
								</div>
							</div>
							<!-- 加入购物车 -->
							<p class="buyorjoin j-flag f-cb" id="buyFlag">
								<a class="f-fl u-btn u-btn-white f-mgr10 " href="javascript:;">立即购买</a>
								<a class="f-fl u-btn u-btn-red u-btn-red-1" @click.prevent="addCart()">
									<i class="u-icn u-icn-7"></i>
									加入购物车
								</a>
							</p>
						</div>
					</div>
					<!-- 详细介绍 -->
					<div class="n-content">
						<!-- 长篇介绍 -->
						<div class="n-content-left f-fl f-cb">
							<h2>商品详情</h2>
							<div class="n-singles j-flag"></div>
							<div class="n-describe">
								<div class="j-flag">
									<a href="https://music.163.com/m/at/yyjynsy">
										<img src="../assets/img/productdetail/109951163945665768.jpg">
									</a>
									<div id="info"></div>
									<p><span style="color:#ff0000;">{{promises[0]}}</span></p>
									<p></p>
									<p><span style="color:#ff0000;">{{promises[1]}}</span></p>
									<p><span style="color:#ff0000;">{{promises[2]}}</span></p>
									<p><br></p>
									<img :src="detail.dpic">
									<p><br></p>
									<p>商品交易成功后会在2个工作日内由北京恒远恒信科技发展有限公司发货，法定节假日顺延（包含周六日），请在确认商品完好后再签收。若存在质量问题，请务必在7天之内联系客服：</p>
									<p>·客服账号：私信 @云音乐客服</p><p>·温馨提示：完整的包装、配件和保修卡是电子产品进行售后的基础，请务必查看齐全后签收并妥善保管。</p>
								</div>
							</div>
						</div>
						<!-- 热门商品小 -->
						<div class="n-hotrecommend" id="hotrecommend">
							<h2 class="f-ff2">热门商品</h2>
							<m-product start="0" end="4"></m-product>
						</div>
					</div>
					<!-- 隐藏购买条 -->
					<div ref="topbar" class="f-fixed n-topbar">
						<div class="topbarctn">
							<div class="imgbox f-fl">
								<img :src="mdpic">
							</div>
							<div class="prtmsg f-fl">
								<p class="f-thide">{{detail.title}}</p>
								<span style="color:#d33a31;">¥{{detail.price}}</span>
							</div>
							<div class="tobarbtn f-fr">
								<a class="f-fl u-btn u-btn-white f-mgr10 " href="javascript:;">立即购买</a>
								<a class="f-fl u-btn u-btn-red u-btn-red-1 j-joincart">
									<i class="u-icn u-icn-7"></i>
									加入购物车
								</a>
							</div>
						</div>
						<div class="border f-pa"></div>
					</div>
				</div>
				<div class="m-foot "></div>
			</div>
			<!-- 分享板块 -->
			<div class="auto-1553592853306 m-layer z-show m-layer-w6" v-if="isShareShow">
				<div class="zbar" id="auto-id-10NB0eQER927rZ4E">
					<div class="zttl">分享</div>
				</div>
				<div class="zcnt">
					<div class="lyct lyct-1" id="auto-id-0DZkGmIHnghi4Lgr">
						<ul class="n-outshr f-cb">
							<li data-type="xlwb">
								<a href="javascript:;" class="logo xlwb"></a>
								<a href="javascript:;" class="wd">新浪微博</a>
							</li>
							<li data-type="wx">
								<a href="javascript:;" class="logo wxfrd"></a>
								<a href="javascript:;" class="wd">微信</a>
							</li>
							<li data-type="yx">
								<a href="javascript:;" class="logo yxfrd"></a>
								<a href="javascript:;" class="wd">易信好友</a>
							</li>
							<li data-type="qzone">
								<a href="javascript:;" class="logo qzone"></a>
								<a href="javascript:;" class="wd">QQ空间</a>
							</li>
						</ul>
					</div>
				</div>
				<span class="zcls" title="关闭窗体" id="auto-id-Z6vIvuHTSNInlckZ" @click="closeShare()">×</span>
			</div>
		</div>
	</div>
</template>

<script>
	import SideMenu from '../components/SideMenu.vue'
	import Mproduct from '../components/Mproduct.vue'
	import axios from 'axios'
	
	export default {
	    data: function () {
	        return {
		    	isShareShow:false,
		    	isBigimgShow:false,
		    	pid:1,
				  count:1,
		    	did:0,
		    	mdpic:"",
		    	lgpic:"",
		    	detail:{},
					specs:[],
		    	promises:[],
		    	pics:[]
		    }
	    },
		computed:{
			uid(){
				if(sessionStorage.getItem("user_id")){
					this.$store.commit("userId",sessionStorage.getItem("user_id"));
				}
				return this.$store.state.uid;
			}
		},
	    components: {
		  	'side-menu':SideMenu,
		  	'm-product':Mproduct
	    },
	    methods: {
		    loadDetail(pid,did){
		  	    var url=`http://127.0.0.1/163store/src/assets/data/productdetail/getProductById.php?pid=${pid}&did=${did}`;
		  	    axios.get(url).then((res)=>{
		  		    var data=res.data;
		  		    this.detail=data.product;
					this.specs=data.specs;
		  		    this.detail.dpic=require("@/"+data.product.dpic);
		  		    this.detail.servise=this.detail.servise.split("/");
		  		    this.promises=this.detail.promise.split("/");
		  		    this.pics=[];
		  		    for(var i=0;i<data.pics.length;i++){
		  		  	  this.pics[i]=data.pics[i];
		  		  	  this.pics[i].sm=require("@/"+data.pics[i].sm);
		  		  	  this.pics[i].md=require("@/"+data.pics[i].md);
		  		  	  this.pics[i].lg=require("@/"+data.pics[i].lg);
		  		    }
		  		    this.mdpic=this.pics[0].md;
		  		    this.lgpic=this.pics[0].lg;
		  	    }).catch(function(err){
		  		    console.log(err);
		  	    });
		    },
		    shareShow(){this.isShareShow=true;},
		    closeShare(){this.isShareShow=false;},
		    couponShow(){
		  	    var el=this.$refs.couponList;
		  	    el.classList.add("show-all");
		    },
		    couponHide(){
		  	    var el=this.$refs.couponList;
		  	    el.classList.remove("show-all");
		    },
		    bigImgShow(){this.isBigimgShow=true;},
		    bigImgHide(){this.isBigimgShow=false;},
		    superMask(e){
		  	    var smask=this.$refs.smask;
		    	  var SMSIZE=220,MSIZE=440;
		    	  var top=e.offsetY-SMSIZE/2;
		    	  var left=e.offsetX-SMSIZE/2;
		    	  if(top<0){top=0}
		    	  else if(top>MSIZE-SMSIZE){top=MSIZE-SMSIZE}
		    	  if(left<0){left=0}
		    	  else if(left>MSIZE-SMSIZE){left=MSIZE-SMSIZE}
		    	  smask.style.top=top+"px";
		    	  smask.style.left=left+"px";
				    var bigimg=this.$refs.bigImgBox.children[0];
				    bigimg.style.top=-top*53/22+"px";
				    bigimg.style.left=-left*53/22+"px";
		    },
		    imgChange(event){
		  	    var el=event.currentTarget;
		  	    var i=el.dataset.index;
		  	    this.mdpic=this.pics[i].md;
		  	    this.lgpic=this.pics[i].lg;
		  	    for(var item of el.parentNode.children){
		  	    	item.classList.remove("z-sel");
		  	    }
		  	    el.classList.add("z-sel");
		    },
		    subChange(event){
		  	    var el=event.currentTarget;
		  	    this.did=el.dataset.did;
		  	    for(var item of el.parentNode.children){
		  		    item.classList.remove("z-sel");
		  	    }
		  	    el.classList.add("z-sel");
		    },
		    topbarShow(){
		  	    let scrollY = window.pageYOffset || document.documentElement.scrollTop;
		  	    var topbar=this.$refs.topbar;
		  	    if(scrollY>=740){
		  	    	topbar.classList.add("show");
		  	    }else{
		  	    	topbar.classList.remove("show");
		  	    } 
		    },
			countAdd(){
				this.count++;
				var btndis=this.$refs.btndis;
				btndis.classList.remove("btn-dis");
			},
			countMinus(){
				if(this.count>1){
					this.count--;
				}
				if(this.count==1){
					var btndis=this.$refs.btndis;
					btndis.classList.add("btn-dis");
				}
			},
			addCart(){
				var uid=this.uid;
				var did=this.did;
				var count=this.count;
				if(did!=0){
					var url=`http://127.0.0.1/163store/src/assets/data/cart/addCart.php?uid=${uid}&did=${did}&count=${count}`;
					axios.get(url).then((res)=>{
						this.$store.commit("countNum",res.data);
					}).catch(function(err){
						console.log(err);
					});
				}else{
					alert("请选择颜色规格！！！");
				}
			}
	    },
	    created(){
		    this.pid=this.$route.params.pid;
		    this.loadDetail(this.pid,this.did);
	    },
	    mounted(){
	        window.addEventListener('scroll', this.topbarShow);
	    },
		beforeDestroy(){
			window.removeEventListener('scroll', this.topbarShow);
		},
	    watch: {
		    did:function(){
		  	  this.loadDetail(this.pid,this.did);
		    }
	    },
	    props: []
	}
</script>

<style scoped>
	@import url("../assets/css/detail.css");
</style>
