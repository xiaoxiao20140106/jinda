<?php
    session_start();
    $user = $_SESSION["user"];
    echo "欢迎您：".$user["username"];

	/*//登录的校验
	if(!isset($_SESSION["user"])){
		header("location:login.html");
	}else{
		$user = $_SESSION["user"];
    	echo "欢迎您：".$user["username"];
	}*/
   