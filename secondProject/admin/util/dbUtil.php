<?php
	define("HOST","127.0.0.1");
	define("NAME","root");
	define("PASSWORD","");
	define("DBNAME","project");

	$conn = mysqli_connect(HOST,NAME,PASSWORD,DBNAME);

	if(!$conn){
		die("数据库连接失败！");
	}
	