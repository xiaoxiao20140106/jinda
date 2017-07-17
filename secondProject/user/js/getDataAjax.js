function showData(tb,art,id){
	$.post("PHP/selectData.php",{"tb":tb},function(data){
		// console.log(data);
		var htmlStr = template(art,{"data":data});
		$(id).html(htmlStr);

		// 街区活动的动画
		$(".hideInfo").hover(function(){
			$(this).children("img").animate({
				"margin-left":"-=100%"
			},500);
		},function(){
			$(this).children("img").animate({
				"margin-left":"+=100%"
			},500); 
		});
	},"json");
}