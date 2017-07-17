<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="../css/pintuer.css">
<link rel="stylesheet" href="../css/admin.css">

<script src="../js/jquery.js"></script>
<script src="../js/page.js"></script>
<script src="../../user/js/template-web.js"></script>

</head>
<body>
    <?php
      include "../util/dbUtil.php";
      include "../util/selectTable.php"; 
    ?>
<form method="post" action="" id="listform">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
        <li> <a class="button border-main icon-plus-square-o" href="add.php?flag=<?php echo $flag; ?>"> 添加内容</a> </li>
      </ul>
    </div>
    <table class="table table-hover text-center">
      <tr>
        <th width="100" style="text-align:left; padding-left:20px;">ID</th>
        <th>图片</th>
        <th>标题</th>
        <th width="10%">更新时间</th>
        <th width="310">操作</th>
      </tr>
      <?php
        session_start();
        
        $pageSize = 3;

        $querySql = "select * from $tbName";

        $countSql = " select count(0) size from (".$querySql.") temp ";

        $countResult = mysqli_query($conn,$countSql);

        $dataSize = mysqli_fetch_array($countResult,MYSQL_ASSOC)["size"];

        $pageNo = ceil($dataSize/$pageSize);

        // 显示的当前页
        $pageFlag = $_GET["pageFlag"];

        if(!$pageFlag){
          $clickPage = $_REQUEST["clickPage"];
          if($clickPage > $pageNo){
            $clickPage = $pageNo;
          }
        }else{
          $clickPage = $pageNo;
        }

        if(!$clickPage){
          $clickPage = 1;
        }

        $_SESSION["cPage"] = $clickPage;

        $start = ($clickPage-1)*$pageSize;

        $querySql .= " limit $start,$pageSize ";
        $result = mysqli_query($conn,$querySql);

        $i = 1;
        while($row = mysqli_fetch_array($result,MYSQL_ASSOC)){
          $id = $row["id"];
          $title = $row["title"];
          $imgPath = $row["imgPath"];
          $showTime = $row["showTime"];

          echo "<tr>
            <td style='text-align:left; padding-left:20px;'>
                <input type='checkbox' name='id[]' value='' /> $i
            </td>
            <td width='10%'>
              <img src='../images/$imgPath' width='70' height='50' />
            </td>
             <td>$title</td>
             <td>$showTime</td>
             <td>
                 <div class='button-group'>
                   <a class='button border-main' href='edit.php?id=$id&flag=$flag'>
                        <span class='icon-edit'></span> 修改
                    </a>
                    <a class='button border-red' href='javascript:void(0)'' onclick='return del($id,1,1)''>
                         <span class='icon-trash-o'></span> 删除
                    </a>
                 </div>
              </td>
           </tr>";
           $i++;
        }
        mysqli_close($conn);
      ?>
      <tr>
        <td colspan="8">
            <input type="hidden" name="clickPage" value="1" id="clickPage">
            <div id="pages" class="pagelist">
              <ul>
                <!-- <li>上一页</li>
                <li>1</li>
                <li>下一页</li> -->
              </ul>
            </div>
        </td>
      </tr>
    </table>
  </div>
</form>
<script type="text/javascript">
 
  $(function(){
    init($("#pages"),{
        countPage:<?php echo $pageNo; ?>,
        nowPage:<?php echo $clickPage; ?>,
        callback:pageCallBack
      });

    /*$("#pages ul li").click(function(){
      console.log($(this).html());
      $(this).css("background","#09F");
      $(this).removeAttr('class');
    });*/
  });
  function pageCallBack(clickPage){
      console.log("页面初始化：",clickPage);
      $("#clickPage").val(clickPage);
      $("#listform").submit();
    }
  //删除
  function del(id,mid,iscid){
  	if(confirm("您确定要删除吗?")){
          window.location.href="../PHP/deletePage.php?id="+id+"&flag=<?PHP echo $flag ?>";
          // window.location.href="../PHP/deletePage.php?id=<?PHP echo $id ?>&flag=<?PHP echo $flag ?>";
  	}else{
          alert("您取消了删除操作");
      }
  }

</script>
</body>
</html>