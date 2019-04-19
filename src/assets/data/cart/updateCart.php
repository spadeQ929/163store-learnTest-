<?php
//data/cart/updateCart.php
require_once("../init.php");
@$iid=$_REQUEST["iid"];
@$count=$_REQUEST["count"];
$uid=null;
$cartCount=null;
if($iid!=null&&$count!=null){
	if($count>0)
		$sql="update 163_shoppingcart_item set count=$count where iid=$iid";
	else
		$sql="delete from 163_shoppingcart_item where iid=$iid";
	mysqli_query($conn,$sql);
	$sql="select user_id from 163_shoppingcart_item where iid=$iid";
    $result=mysqli_query($conn,$sql);
	$uid=mysqli_fetch_row($result)[0];
	$sql="select sum(count) from 163_shoppingcart_item where user_id=$uid";
	$result=mysqli_query($conn,$sql);
	$cartCount=mysqli_fetch_row($result)[0];
}
     echo json_encode($cartCount);