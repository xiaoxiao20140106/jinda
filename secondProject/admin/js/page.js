var opt = {
		countPage:8,
		nowPage:4,
		callback:function(clickPage){
			console.log("被点击的页面：",clickPage);
		}
	}

	function init(jObj,option){
		if(option!=null){
			opt = option;
		}
		createPage(jObj);
		bindEvent(jObj);
	}

	function createPage(jObj) {
		jObj.find("ul").html("");
		jObj.find("ul").append("<li>首页</li>");
		jObj.find("ul").append("<li>上一页</li>");
		for(var i = 1;i<=opt.countPage;i++){
			var liobj = null;
			if(i==opt.nowPage){
				liobj = $("<li class='action'>").html(i);
			}else{
				liobj = $("<li>").html(i);
			}
			jObj.find("ul").append(liobj);
		}
		
		jObj.find("ul").append("<li>下一页</li>");
		jObj.find("ul").append("<li>尾页</li>");
		bindEvent(jObj);
	}

	function bindEvent(jObj){
		jObj.find("li").click(function(){
			jObj.find("li").removeClass("action");
			var clickPage = $(this).html();
			//console.log(clickPage);
			$(this).addClass('action');

			if(clickPage=="首页"){
				opt.callback(1);
				return;
			}
			if(clickPage=="尾页"){
				opt.callback(opt.countPage);
				return;
			}
			if(clickPage=="上一页"){
				opt.callback(opt.nowPage-1<1?1:opt.nowPage-1);
				return;
			}
			if(clickPage=="下一页"){
				console.log(opt.nowPage+1);
				opt.callback(opt.nowPage+1>opt.countPage?opt.countPage:opt.nowPage+1);
				return;
			}
			opt.callback(clickPage);
		});
	}
