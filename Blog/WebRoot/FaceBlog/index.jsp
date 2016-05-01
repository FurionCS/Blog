
<%@ taglib uri="Mytag" prefix="Layout"%>
<Layout:overwrite name="title">
蛋黄主页
</Layout:overwrite>
<%-- <Layout:overwrite name="Mycss"></Layout:overwrite> --%>

<Layout:overwrite name="MyContent">
<div class="mid-col">
      <nav id="mobile-nav" style="margin-bottom:55px;">
		<div class="overlay" style="height:44px;">
			<div class="slider-trigger"></div>
		</div>
	 </nav>
     <div class="body-wrap">
     <div id="articlelist">
	 </div>
   
    <nav id="page-nav">
    </nav>
</div>
</Layout:overwrite>
<Layout:overwrite name="MyScript">
	<script>
	var pageSize = 5; //一页显示的记录数
    var pageIndex = 1; //当前页
   
    $(document).ready(function () {
       getArticleList();
     });
    /**标准化时间*/
	function StandardTime(Time){
		if(Time==null||Time==""){
			return "未知时间";
		}
		else{
			return new Date(parseInt(Time.time,10)).toLocaleDateString();
		}
	}
	 function getArticleList() {
            $.ajax({
                url: "article-list",
                type: "POST",
                data: {"page.pageSize": pageSize,"page.pageIndex": pageIndex},
                dataType: "json",
                success: function (result) {            	
                    if (result.code =="1") {
                    	var listID=[];
                    	var listTitle=[];
                        count = result.count;
                        var html = "";
                        var data=result.la; 
                        for (var i = 0; i < data.length; i++) {
                        	listID.push(data[i].aid);
                        	listTitle.push(data[i].atitle);
                        	if(i==0){
                        	html+='<article  class="article article-type-post show" itemscope itemprop="blogPost">';
                        	}
                        	else{
                        	html+='<article  class="article article-type-post" itemscope itemprop="blogPost">';
                        	}
                        	html+='<div class="article-meta">';  
                        	html+='<a href="javascript:void()" class="article-date"><time  itemprop="datePublished">'+StandardTime(data[i].apublishtime)+'</time></a>';
                        	html+='</div><div class="article-inner"><input type="hidden" class="isFancy" /><header class="article-header"><h1 itemprop="name">';
                        	html+=' <a class="article-title" href="/Blog/FaceBlog/Article.jsp?aid='+data[i].aid+'">'+data[i].atitle+'</a>';
                        	html+=' </h1></header><div class="article-entry" itemprop="articleBody">'+data[i].acontent;
                        	html+='</div><div style="text-align:center;padding:15px 5px 5px 5px;"></div><div class="article-info article-info-index">';
                        	html+='<div class="article-tag tagcloud"><ul class="article-tag-list"><li class="article-tag-list-item">';
                        	if(data[i].atabone!=""){
                        		var z=Math.floor(Math.random()*5)+1;
                        		html+='<a class="color'+z+'" href="/tags/">'+data[i].atabone+'</a>';
                        	}
                        	if(data[i].atabtwo!=""){
                        		z=Math.floor(Math.random()*5)+1;
                        		html+='<a class="color'+z+'" href="/tags/">'+data[i].atabtwo+'</a>';
                        	}
                        	if(data[i].atabthree!=""){
                        		z=Math.floor(Math.random()*5)+1;
                        		html+='<a class="color'+z+'" href="/tags/">'+data[i].atabthree+'</a>';
                        	}
                        	html+='</li></ul></div><div class="clearfix"></div> </div></div></article> ';
                        }
                        $("#articlelist").html(html);
                    }
                    else {
                        $("#articlelist").html('<h1 class="textCenter">暂时没有哦！！</h1>');
                    } 
                    if(window.localStorage==null||window.localStorage==undefined){
                    	alert("请更新您的浏览器到IE8版本及以上");
                    }
                    else{ 
                    	window.localStorage.listID=listID;
                    	window.localStorage.listTitle=listTitle;
                    }
                    GetPageInfo(count); 
                },
                error: function () {
                    console.log("error");
                }
            });
        }
        function GetPageInfo(count) {
            var pageHtml = "";
            if (count != 0) {
                recordCount = count;
                pageCount = Math.ceil(recordCount / pageSize);
                if (pageIndex != 1) {
                	pageHtml += "<a class='extend prev' rel='prev'  onclick='GotoPage(" + Number(pageIndex - 1) + ")'>&laquo; Prev</a>";
                }
                var min=pageIndex-2;
                var max=pageIndex+2;
                if(min>2){
            		pageHtml+="<a class='page-number'  onclick='GotoPage(" + Number(1) + ")'>1</a><span class='space'>&hellip;</span>";
            	}
            	else if(min==2){
            		pageHtml+="<a class='page-number'  onclick='GotoPage(" + Number(1) + ")'>1</a>";
            	}
                for(var i=min;i<=max;i++){
              		if(i!=pageIndex && i>0 && i<=pageCount){
                		pageHtml+=" <a class='page-number'  onclick='GotoPage(" + Number(i) + ")'>"+i+"</a>";
              		}
              		else if(i==pageIndex){
              			pageHtml+="<span class='page-number current'>"+i+"</span>";
              		}
              		if(i==max && max<(pageCount-1)){
              			pageHtml+="<span class='space'>&hellip;</span>";
              			pageHtml+="<a class='page-number'  onclick='GotoPage(" + Number(pageCount) + ")'>"+pageCount+"</a>";
              		}
              		else if(i==max && i<(pageCount-1)){
              			pageHtml+="<span class='space'>&hellip;</span>";
              			pageHtml+="<a class='page-number'  onclick='GotoPage(" + Number(pageCount) + ")'>"+pageCount+"</a>";
              		}
              		else if(i==max && i==(pageCount-1)){
              			pageHtml+="<a class='page-number'  onclick='GotoPage(" + Number(pageCount) + ")'>"+pageCount+"</a>";
              		}
                }
                if (pageIndex!=pageCount&&pageCount>1) {
                	pageHtml += "<a class='extend next' rel='next' onclick='GotoPage(" + Number(pageIndex + 1) + ")'>Next &raquo;</a>";
                }
       		 }
            $("#page-nav").html(pageHtml);
        }
	    function GotoPage(topage) {
	            pageIndex = topage;
	            if (0 < topage && topage <= pageCount)
	            	getArticleList();
	     }
        </script>
</Layout:overwrite>
<%@ include file="../share/Layout.jsp"%>

    
 

 