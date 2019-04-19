<?php
//data/products/getProductById.php
require_once("../init.php");
$output=[
  "specs"=>[],
  "product"=>null,
  "pics"=>[]
];
@$pid=$_REQUEST["pid"];
@$did=$_REQUEST["did"];
if($pid!=null){
  $sql="SELECT * FROM `163_product` where product_id=$pid";
  $result=mysqli_query($conn,$sql);
  $output["product"]=mysqli_fetch_all($result,1)[0];
  $sql="SELECT spec FROM `163_product` where product_id=$pid";
  $result=mysqli_query($conn,$sql);
  $output["specs"]=mysqli_fetch_all($result,1);
  $sql = "SELECT * FROM `163_product_pic` WHERE detail_id='$did'";
  $result=mysqli_query($conn,$sql);
  $output["pics"]=mysqli_fetch_all($result,1);
}
echo json_encode($output);