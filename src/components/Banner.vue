<template>
	<div>
		<div class="n-bunner">
			<div class="bunner-pic">
				<a :href="bpic.href" target="_blank">
					<img :src="bpic.img" :alt="bpic.title">
				</a>
			</div>
			<div class="dots">
				<a href="#" data-no="0" @click="tabpic($event)" class="a-sel"></a>
				<a href="#" data-no="1" @click="tabpic($event)"></a>
				<a href="#" data-no="2" @click="tabpic($event)"></a>
				<a href="#" data-no="3" @click="tabpic($event)"></a>
				<a href="#" data-no="4" @click="tabpic($event)"></a>
				<a href="#" data-no="5" @click="tabpic($event)"></a>
			</div>
			<div class="point">
				<a href="#" class="left" @click.prevent="left()"><i class="tk"></i></a>
				<a href="#" class="right" @click.prevent="right()"><i class="tk"></i></a>
			</div>
		</div>
	</div>
</template>

<script>
	import axios from 'axios'
	export default {
	  data: function () {
	    return {
				bpic:{
					img:require("../assets/img/bunner/bunner(1).jpg"),
					title:"轮播广告商品1",
					href:"https://music.163.com/m/at/5c94d73438066ae3d6917860"
				},
				pi:0,
				pics:[]
			}
	  },
	  methods: {
			left(){
				var parent=document.querySelector(".dots");
 				for(var i of parent.children){
 					i.className="";
 				};
				if(this.pi!=0){
					this.pi--;
				}else{
					this.pi=5;
				}
				var el=parent.children[this.pi];
				el.className="a-sel";
				this.bpic=this.pics[this.pi]
			},
			right(){
				var parent=document.querySelector(".dots");
				for(var i of parent.children){
					i.className="";
				};
				if(this.pi<5){
					this.pi++;
				}else{
					this.pi=0;
				}
				var el=parent.children[this.pi];
				el.className="a-sel";
				this.bpic=this.pics[this.pi]
			},
			tabpic(event){
				var el=event.currentTarget;
				var parent=el.parentElement;
				for(var i of parent.children){
					i.className="";
				};
				el.className="a-sel";
				this.pi=el.dataset.no;
				this.bpic=this.pics[this.pi]
			},
			loadindex(){
				var url="http://127.0.0.1/163store/src/assets/data/productindex/getCarousel.php";
				axios.get(url).then((res)=>{
					this.pics=res.data;
					for(var i=0;i<res.data.length;i++){
						this.pics[i].img=require("@/"+res.data[i].img);
					}
				}).catch(function(err){
					console.log(err);
				});
			}
	  },
	  created() {
	  	this.loadindex();
	  },
	  mounted(){
		this.t=setInterval(this.right,2500);
	  },
	  beforeDestroy(){
		  clearInterval(this.t)
	  }
	}
</script>

<style scoped>
	@import '../assets/css/banner.css';
</style>
