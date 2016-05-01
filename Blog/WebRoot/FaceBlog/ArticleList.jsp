
<%@ taglib uri="Mytag" prefix="Layout"%>
<Layout:overwrite name="title">
蛋黄的文章列表
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
   <section class="archives-wrap" id="archiveswrap">
  </section>
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
		function getYear(Time){
			if(Time==null||Time==""){
				return "未知年份";
			}
			else{
				return new Date(parseInt(Time.time,10)).getFullYear();
			}
		}
	    var month=["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sept","Oct","Nov","Dec"];
	    function getMAD(Time){
	    	if(Time==null||Time==""){
				return "未知月份";
			}
			else{
				return month[Time.month+1]+" "+Time.date;
			}
	    }
		function getArticleList() {
            $.ajax({
                url: "article-list",
                type: "POST",
                data: {"page.pageSize": pageSize,"page.pageIndex": pageIndex},
                dataType: "json",
                success: function (result) { 
                	if(result.code>0){
                		var alist=result.la;
                		var html="";
                		for(var i=0;i<alist.length;i++){
                			if(i==0||getYear(alist[i].apublishtime)!=getYear(alist[i-1].apublishtime)){
                				html+='<div class="archive-year-wrap"><a class="archive-year">'+getYear(alist[i].apublishtime)+'</a></div><div class="archives">';
                			}
                				html+=' <article class="archive-article archive-type-post"><div class="archive-article-inner"><header class="archive-article-header"><div class="article-meta">';
                				html+='<a  class="archive-article-date"><time itemprop="datePublished">'+getMAD(alist[i].apublishtime)+'</time></a></div>';
                				html+='<h1 itemprop="name"><a class="archive-article-title" href="/Blog/FaceBlog/Article.jsp?aid='+alist[i].aid+'">'+alist[i].atitle+'</a></h1>';
                				html+='<div class="article-info info-on-right"><div class="article-tag tagcloud"><ul class="article-tag-list"><li class="article-tag-list-item">';
                				if(alist[i].atabone!=""){
                					var z=Math.floor(Math.random()*5)+1;
                					html+='<a class="article-tag-list-link color'+z+'" >'+alist[i].atabone+'</a>';};
                				if(alist[i].atabtwo!=""){
                					var z=Math.floor(Math.random()*5)+1;
                					html+='<a class="article-tag-list-link color'+z+'">'+alist[i].atabtwo+'</a>';}
                				if(alist[i].atabthree!=""){
                					var z=Math.floor(Math.random()*5)+1;
                					html+='<a class="article-tag-list-link color'+z+'">'+alist[i].atabthree+'</a>';}
                				html+='</li></ul>';
                				html+='</div></div><div class="clearfix"></div></header></div></article>';
                			
                		}
                		$("#archiveswrap").html(html);
                	}else{
                		$("#archiveswrap").html("没有文章");
                	}
                 GetPageInfo(result.count);
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
   
