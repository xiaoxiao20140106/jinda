<?php
	include "../../admin/util/dbUtil.php";
	
	$tb = $_REQUEST["tb"];
	// echo $tb;

	$sql = "select * from $tb";
	$result = mysqli_query($conn,$sql);

	$queryArr = [];
	while($row = mysqli_fetch_array($result,MYSQL_ASSOC)){
		move_uploaded_file($_FILES["img"]["tmp_name"], "../images/$imgPath");
		array_push($queryArr, $row);
	}
	mysqli_close($conn);
	echo json_encode($queryArr);