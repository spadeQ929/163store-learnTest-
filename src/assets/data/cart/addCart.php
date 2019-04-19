<?php
//data/cart/addCart.php
require_once("../init.php");
@$uid=$_REQUEST["uid"];
@$did=$_REQUEST["did"];
@$count=$_REQUEST["count"];
$cartCount=null;
if($uid!=null&&$did!=null&&$count!=null){
	$sql="select * from 163_shoppingcart_item where user_id=$uid and detail_id=$did";
	$result=mysqli_query($conn,$sql);
	if(mysqli_fetch_row($result)==null)
		$sql="insert into 163_shoppingcart_item values (null,$uid,$did,$count,0)";
	else
		$sql="update 163_shoppingcart_item set count=count+$count where user_id=$uid and detail_id=$did";
	mysqli_query($conn,$sql);
	$sql="select sum(count) from 163_shoppingcart_item where user_id=$uid";
	$result=mysqli_query($conn,$sql);
	$cartCount=mysqli_fetch_row($result)[0];
}
  echo json_encode($cartCount);