<?php
	include "../util/dbUtil.php";
	$title = $_POST["title"];
	$imgPath = $_FILES["img"]["name"];
	$instro = $_POST["content"];
	$flag = $_GET["flag"];
	// echo "=====".$flag;

	$newPath = rand(1000,9999).$imgPath;

	move_uploaded_file($_FILES["img"]["tmp_name"], "../images/".$newPath);

	// echo "<img src='../images/$newPath'>";  

	if($flag == "n"){
		$tbName = "streetNew";
	}
	if($flag == "o"){
		$tbName = "Org";
	}
	if($flag == "a"){
		$tbName = "streetActive";
	} 
	
	$sql = "insert into $tbName values(null,'$title','$newPath','$instro',now())";

	$addResult = mysqli_query($conn,$sql);
	if($addResult){
		echo "<script type='text/javascript'>alert('添加成功');location.href='../template/list.php?flag=$flag&pageFlag=p'</script>";
	}else{
		echo "添加失败".mysqli_error($conn);
	}
