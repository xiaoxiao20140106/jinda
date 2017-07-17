<?php
	session_start();
	include "../util/dbUtil.php";
	include "../util/selectTable.php";
	$id = $_GET["id"];
	$clickPage = $_SESSION["cPage"];

	echo $tbName."<br>";
	echo $id;

	$sql = "delete from $tbName where id = $id";

	$query = mysqli_query($conn,$sql);

	if($query){
		echo "<script type='text/javascript'>alert('删除成功');location.href='../template/list.php?flag=$flag&clickPage=$clickPage'</script>";
	}else{
		echo "删除失败";
	}