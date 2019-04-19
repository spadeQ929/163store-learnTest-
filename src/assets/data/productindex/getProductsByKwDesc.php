<?php
require_once("../init.php");
@$kw=$_REQUEST["kw"];
@$pno=$_REQUEST["pno"];
$output=[
  "count"=>0,
  "pageSize"=>60,
  "pageCount"=>0,
  "pno"=>0,
  "products"=>[]
];
if($kw!=null&&$pno!=null){
  //"mac 128g i5"
  //按空格分割:["mac","128g","i5"]
  $kws=explode(" ",$kw);
  //遍历
  for($i=0;$i<count($kws);$i++)
	  $kws[$i]=" details like '%".$kws[$i]."%'";
  //arr.join(" and ");
  $where=" where ".implode(" and ",$kws);
  $sql="select count(*) from 163_index_product $where";
  $result=mysqli_query($conn,$sql);
  $output["count"]=mysqli_fetch_row($result)[0];
  $output["pageCount"]=Ceil($output["count"]/$output["pageSize"]);
  $output["pno"]=$pno;
  $limit=" limit ".$output["pageSize"]*$pno.",".$output["pageSize"];
  $order=" order by price desc ";
  $sql="select * from 163_index_product $where $order $limit ";
  $result=mysqli_query($conn,$sql);
  $output["products"]=mysqli_fetch_all($result,1);
}
echo json_encode($output);