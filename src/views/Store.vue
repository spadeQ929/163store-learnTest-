<template>
	<div>
		<top-header></top-header>
		<router-view/>
		<bottom-footer></bottom-footer>
	</div>
</template>

<script>
	import Header from '../components/Header.vue'
	import Footer from '../components/Footer.vue'
	
	export default {
	  data: function () {
	    return {}
	  },
	  components: {
		'top-header':Header,
		'bottom-footer':Footer
	  },
	  methods: {},
	  watch: {},
	}
</script>

<style scoped></style>
