<?php
  	$flag = $_GET["flag"];

    if($flag == "n"){
      $tbName = "streetNew";
    }
    if($flag == "o"){
      $tbName = "Org";
    }
    if($flag == "a"){
      $tbName = "streetActive";
    }