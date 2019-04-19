<template>
	<div>
		<side-menu :class="wrapclass"></side-menu>
		<bunner></bunner>
		<nav-tab></nav-tab>
		<div class="g-bd g-bd-home">
			<div id="g-main" class="ma">
				<div id="module-root" class="n-index">
					<!-- 红黄图片板块 -->
					<div class="subjs f-cb">
						<div class="subj pad-right">
							<div>
								<router-link to="/store/column">
									<img src="../assets/img/projectmain/19143596951529145.jpg">
								</router-link>
							</div>
						</div>
						<div class="subj">
							<a href="https://music.163.com/store/product/column?id=68001">
								<img src="../assets/img/projectmain/19010556044576549.jpg">
							</a>
						</div>
					</div>
					<!-- 编辑推荐 -->
					<div class="m-block">
						<span class="mid-txt mid-bold">编辑推荐</span>
						<div id="recmd-list">
							<m-product start="0" end="8"></m-product>
						</div>
					</div>
					<!-- 数字专辑 -->
					<div id="digalb" class="digalb f-mgt10" @click="gotorank()">
						<div class="cnt">
							<div class="inner">
								<span><i></i>数字专辑</span>
								<p class="f-thide">Avril Lavigne全新专辑火热售卖中
									<em class="p-cover"></em>
								</p>
								<a href="javascript:;">立 即 购 买 &gt;</a>
							</div>
						</div>
						<div class="covers f-pa">
							<img class="sml" src="../assets/img/projectmain/109951163848722929.jpg">
							<img class="big" src="../assets/img/projectmain/109951163872739510.jpg">
							<i class="circle"></i>
						</div>
					</div>
					<!-- 热门商品 -->
					<div class="m-block">
						<span class="mid-txt mid-bold">热门商品</span>
						<div id="hot-list">
							<m-product start="8" end="58"></m-product>
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
	import Bunner from '../components/Banner.vue'
	import NavTab from '../components/NavTab.vue'
	import Mproduct from '../components/Mproduct.vue'
	
	export default {
	  data: function () {
	    return {
				wrapclass:"m-wrap m-top-a"
			}
	  },
	  components: {
			'bunner':Bunner,
			'side-menu':SideMenu,
			'nav-tab':NavTab,
			'm-product':Mproduct
	  },
	  methods: {
			sidep(){
				let scrollY = window.pageYOffset || document.documentElement.scrollTop;
				if(scrollY>=300){
					this.wrapclass="m-wrap m-top-b";
				}else{
					this.wrapclass="m-wrap m-top-a";
				}
			},
			gotorank(){
				open("https://music.163.com/v/w/album/rank","rank");
			}
		},
	  mounted(){
			window.addEventListener('scroll', this.sidep);
	  }
	}
</script>

<style scoped>
	@import '../assets/css/productmain.css';
</style>
