<?php
require_once("../init.php");
@$uid=$_REQUEST["uid"];
if($uid!=null){
	$sql="select * from 163_shoppingcart_item inner join 163_product on detail_id=did where user_id=$uid order by iid desc";
	$result=mysqli_query($conn,$sql);
	echo json_encode(mysqli_fetch_all($result,1));
}
