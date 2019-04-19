<template>
	<div>
		<side-menu></side-menu>
		<div class="g-bd g-bd-hasFooter">
			<div id="g-main" class="ma">
				<div>
					<div class="m-banner f-pr">
						<img src="../assets/img/projectmain/18532268488217809.jpg" class="pic">
					</div>
					<m-product start="8" end="58"></m-product>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	import axios from 'axios'
	import SideMenu from '../components/SideMenu.vue'
	import Mproduct from '../components/Mproduct.vue'
	
	export default {
	    data: function () {
	        return {}
	    },
	    components: {
			'side-menu':SideMenu,
			'm-product':Mproduct
	    },
	    methods: {}
	}
</script>

<style scoped>
	@import '../assets/css/column.css';
</style>
