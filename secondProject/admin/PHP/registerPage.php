<?php
	include '../util/dbUtil.php';
	$username = $_POST["name"];
	$password = $_POST["password"];
	$email = $_POST["email"];

	$sqlName = "select * from user where username = '$username'";
	$query = mysqli_query($conn,$sqlName);

	if($query ->num_rows >0){
		echo '<script type="text/javascript">alert("用户名已存在");location.href="../template/register.html"</script>';
	}

	$sql = "insert into user values(null,'$username','$password','$email')";
	$result = mysqli_query($conn,$sql);
	if($result){
		header("location:../template/login.html");
		exit();
	}