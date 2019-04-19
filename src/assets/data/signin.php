<?php
//data/users/signin.php
require_once("init.php");
@$uname=$_REQUEST["uname"];
@$upwd=$_REQUEST["upwd"];
$output=[
  "uid"=>null,
  "cartCount"=>null,
  "code"=>null
];
if($uname!=null&&$upwd!=null){
  $sql="select * from 163_user where uname='$uname' and binary upwd='$upwd'";
  $result=mysqli_query($conn,$sql);
  $row=mysqli_fetch_row($result);
  if($row==null){
	$output["code"]=0;
    die(json_encode($output));
  }else{
    $output["uid"]=$row[0];
    $output["code"]=1;
  }
  $sql="select sum(count) from 163_shoppingcart_item where ";
  $sql.="user_id=".$output["uid"];
  $result=mysqli_query($conn,$sql);
  $output["cartCount"]=mysqli_fetch_row($result)[0];
}
  echo json_encode($output);