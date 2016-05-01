
<%@ taglib uri="Mytag" prefix="Layout"%>
<Layout:overwrite name="Mytag">
<%@ taglib prefix="s" uri="/struts-tags" %>
</Layout:overwrite>
<Layout:overwrite name="title">
蛋黄的文章
</Layout:overwrite>
<%-- <Layout:overwrite name="Mycss"></Layout:overwrite> --%>

<Layout:overwrite name="MyContent">
<div class="mid-col">
      <nav id="mobile-nav" style="margin-bottom:55px;">
		<div class="overlay" style="height:44px;">
			<div class="slider-trigger"></div>
		</div>
	</nav>
      <div class="body-wrap"><article id="post-2016-02-13" class="article article-type-post" itemscope itemprop="blogPost">
  <div id="articleinfo">
   <%--  <div class="article-meta">
      <a href="/2016/02/13/2016-02-13/" class="article-date">
  		<time  itemprop="datePublished"><s:if test="#session.article.apublishtime!=null"><s:property value="#session.article.apublishtime"/></s:if><s:else>未知时间</s:else></time>
	  </a>
    </div>  
    
   
  <div class="article-inner">   
      <input type="hidden" class="isFancy" />   
      <header class="article-header">
  		  <h1 class="article-title" itemprop="name">
      		<s:property value="#a.atitle"/>
   		 </h1>
      </header>
      <div class="article-info article-info-post">
		<div class="article-tag tagcloud">
			<ul class="article-tag-list"><li class="article-tag-list-item">
			<s:if test="#a.atabone!=null"><a class="article-tag-list-link" href="/tags/乔木阅读记录/"><s:property value="#a.atabone"/></a></s:if>
			<s:if test="#a.atabtwo!=null"><a class="article-tag-list-link" href="/tags/乔木阅读记录/"><s:property value="#a.atabtwo"/></a></s:if>
			<s:if test="#a.atabthree!=null"><a class="article-tag-list-link" href="/tags/乔木阅读记录/"><s:property value="#a.atabthree"/></a></s:if>
			</li>
			</ul>
		</div>
        <div class="clearfix"></div>
      </div>
    <div class="article-entry" itemprop="articleBody">
      <s:property value="#a.acontent" escape="false"/>
    </div>
  </div> --%>
  </div>
    <div style="text-align:center;padding:15px 5px 5px 5px;">
    <script type="text/javascript">
    /*推荐看300*250 创建于 2015-05-11*/
    var cpro_id = "u2098461";
	</script>
    </div>
    
<nav id="article-nav">
  
    <a href="javascript:void(0);" id="article-nav-newer" class="article-nav-link-wrap">
      <strong class="article-nav-caption">&lt</strong>
      <div id="article-nav-title-newer" class="article-nav-title">
               请到主页翻页哦
      </div>
    </a>
  
  
    <a href="javascript:void(0);" id="article-nav-older" class="article-nav-link-wrap">
      <div id="article-nav-title-older" class="article-nav-title">请到主页翻页哦</div>
      <strong class="article-nav-caption">&gt</strong>
    </a>
  
</nav>
</article>


<div class="share">
	<div class="bdsharebuttonbox"><a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a><a href="#" class="bds_douban" data-cmd="douban" title="分享到豆瓣网"></a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#" class="bds_mshare" data-cmd="mshare" title="分享到一键分享"></a></div>
<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"16"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
</div>



<div class="duoshuo">
	<!-- 多说评论框 start  -->
	<div class="ds-thread" data-thread-key="${param.aid}" data-title="蛋黄的文章" data-url="http://tuijiankan.com"></div>
	<!-- 多说评论框 end -->
	<!-- 多说公共JS代码 start (一个网页只需插入一次) -->
	<script type="text/javascript">
	var duoshuoQuery = {short_name:"true"};
	(function() {
		var ds = document.createElement('script');
		ds.type = 'text/javascript';ds.async = true;
		ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js';
		ds.charset = 'UTF-8';
		(document.getElementsByTagName('head')[0] 
		 || document.getElementsByTagName('body')[0]).appendChild(ds);
	})();
	var id=${param.aid};
	if(window.localStorage!=undefined&&window.localStorage.listID!=null&&window.localStorage.listTitle!=null){
		var list=window.localStorage.listID.split(",");
		var title=window.localStorage.listTitle.split(",");
		var k=0;
		for(var i=0;i<list.length;i++){
			if(list[i]==id){
				k=i;
				break;
			}
		}
	if(k>=1){var href="/Blog/article-info?article.aid="+list[k-1];$("#article-nav-newer").attr("href",href);$("#article-nav-title-newer").html(title[k-1]);}
	if(k<=list.length){var href2="/Blog/article-info?article.aid="+list[k+1];$("#article-nav-older").attr("href",href2);$("#article-nav-title-older").html(title[k+1]);}
	}
	else if(window.localStorage==undefined){
		alert("请更新您的浏览器到IE8版本及以上");
	}
	/**标准化时间*/
	function StandardTime(Time){
		if(Time==null||Time==""){
			return "未知时间";
		}
		else{
			return new Date(parseInt(Time.time,10)).toLocaleDateString();
		}
	}
	getArticleinfo();
	function getArticleinfo() {
        $.ajax({
            url: "article-info",
            type: "POST",
            data: {"article.aid": id},
            dataType: "json",
            success: function (result) {
            	if(result.code>0){
            		var html="";
            		var date=result.info;
            		html+='<div class="article-meta"> <a href="/2016/02/13/2016-02-13/" class="article-date">';
            		html+='<time  itemprop="datePublished">';
            		html+=StandardTime(date.apublishtime);
            		html+='</time></a></div> <div class="article-inner"><input type="hidden" class="isFancy" /><header class="article-header"> <h1 class="article-title" itemprop="name">';
            		html+=date.atitle+'</h1></header><div class="article-info article-info-post"><div class="article-tag tagcloud"><ul class="article-tag-list"><li class="article-tag-list-item">';
            		if(date.atabone!=""){
            			var z=Math.floor(Math.random()*5)+1;
            			html+='<a class="article-tag-list-link color'+z+'" href="javascript:void(0)" >'+date.atabone+'</a>';
            		}
            		if(date.atabtwo!=""){
            			var z=Math.floor(Math.random()*5)+1;
            			html+='<a class="article-tag-list-link  color'+z+'" href="javascript:void(0)">'+date.atabtwo+'</a>';
            		}
            		if(date.atabthree!=""){
            			var z=Math.floor(Math.random()*5)+1;
            			html+='<a class="article-tag-list-link  color'+z+'" href="javascript:void(0)">'+date.atabthree+'</a>';
            		}
            		html+='</li></ul></div><div class="clearfix"></div></div><div class="article-entry" itemprop="articleBody">';
            		html+=date.acontent+' </div></div>';
            		$("#articleinfo").html(html);
            	}
            	else{
            		$("#articleinfo").html("出错咯咯");
            	}
            }
        })
	}
	
	</script>
	<!-- 多说公共JS代码 end -->
</div>
</div>

    
</Layout:overwrite>
<%-- <Layout:overwrite name="MyScript"></Layout:overwrite> --%>
<%@ include file="../share/Layout.jsp"%>


  </div>
</body>
</html>