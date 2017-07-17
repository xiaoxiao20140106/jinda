<?php
    session_start();
    include "../util/dbUtil.php";
    include "../util/selectTable.php";

    $clickPage = $_SESSION["cPage"];

    $id = $_POST["id"];
    $title = $_POST["title"];
    $insto = $_POST["content"];
    $imgPath = rand(1000,9999).$_FILES["img"]["name"];

    move_uploaded_file($_FILES["img"]["tmp_name"], "../images/".$imgPath);

    $sql = "update $tbName set
    			title = '$title',imgPath = '$imgPath',insto = '$insto',showTime = now() 
    		where 
    			id = $id";
    $query = mysqli_query($conn,$sql);

    if($query){
    	echo "更新成功";
	}else{
		echo "更新失败".mysqli_error();
	}

	header("location:../template/list.php?flag=$flag&clickPage=$clickPage");