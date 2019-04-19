<template>
	<div class="m-product">
		<ul class="list f-cb">
			<li v-for="(val,i) in products">
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
</template>

<script>
	import axios from 'axios'
	export default {
	  data: function () {
	    return {
				products:[]
			}
	  },
	  methods: {
			loadproduct(start,end){
				var url="http://127.0.0.1/163store/src/assets/data/productindex/getIndexProduct.php";
				axios.get(url).then((res)=>{
					start=start||0;
					end=end||res.data.length;
					var data=res.data.slice(start,end);
					for(var i=0;i<data.length;i++){
						this.products.push(data[i]);
						this.products[i].pic=require("@/"+data[i].pic);
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
			}
		},
		created(){
				this.loadproduct(this.start,this.end);
		},
		updated(){
				this.changestyle();
		},
	  props: ['start','end']
	}
</script>

<style scoped>
	@import url("../assets/css/mproduct.css");
</style>
