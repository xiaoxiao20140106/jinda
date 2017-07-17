<?php
	session_start();
	include "../util/dbUtil.php";

	$username = $_POST["username"];
	$password = $_POST["password"];

	$sysCode = $_SESSION["sysCode"];
	// echo $sysCode."<br>";
	$code = $_POST["code"];
	// echo $code;
	if($code != $sysCode){
		echo '<script type="text/javascript">alert("验证码错误");location.href="../template/login.html"</script>';
	}else{
		$sql = "select * from user where username = '$username' and password = '$password'";

		$result = mysqli_query($conn,$sql);

		if($result->num_rows >0){
			// echo "登录成功";
			$row = mysqli_fetch_array($result);
			
			$_SESSION["user"] = $row;
			header("location:../template/index.php");
			exit();
		}else{
			echo '<script type="text/javascript">alert("用户名或密码错误");location.href="../template/login.html"</script>';
		}
	}

	
