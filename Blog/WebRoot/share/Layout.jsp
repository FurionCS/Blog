<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="Mytag" prefix="Layout"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  
  <title>蛋黄的奶瓶</title>
  <meta property="wb:webmaster" content="5ed35908af270da7" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="description" content="记录点点滴滴，用心去书写，用心去感悟">
  <meta property="og:type" content="website">
  <meta property="og:title" content="蛋黄的奶瓶">
  <meta property="og:url" content="http://tuijiankan.com/page/6/index.html">
  <meta property="og:site_name" content="蛋黄心思">
  <meta property="og:description" content="记录点点滴滴，用心去书写，用心去感悟">
  <meta name="twitter:card" content="summary">
  <meta name="twitter:title" content="蛋黄的奶瓶">
  <meta name="twitter:description" content="记录点点滴滴，用心去书写，用心去感悟">
  
    <link rel="alternative" href="/atom.xml" title="蛋黄的奶瓶" type="application/atom+xml">
  
  
    <link rel="icon" href="../img/blog.ico">
  
  <link rel="stylesheet" href="../css/style.css" type="text/css">
  <Layout:block name="Mycss"></Layout:block>
  <script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
  <script>
  var _hmt = _hmt || [];
  (function() {
    var hm = document.createElement("script");
    hm.src = "//hm.baidu.com/hm.js?cf480f8f8ea1922c338962ad963d7948";
    var s = document.getElementsByTagName("script")[0]; 
    s.parentNode.insertBefore(hm, s);
  })();
  </script>

</head>
<body>
  <div id="container">
    <div class="left-col">
    <div class="overlay"></div>
<div class="intrude-less">
	<header id="header" class="inner">
		<a href="/" class="profilepic">
			<img lazy-src="../img/head.png" class="js-avatar">
		</a>
		<hgroup>
		  <h1 class="header-author"><a href="/">蛋黄</a></h1> 
		</hgroup>	
		 <p class="header-subtitle">一切都是最好的安排</p>
		<!--百度站内搜索-->	
			<div class="switch-btn">
				<div class="icon">
					<div class="icon-ctn">
						<div class="icon-wrap icon-house" data-idx="0">
							<div class="birdhouse"></div>
							<div class="birdhouse_holes"></div>
						</div>
						<div class="icon-wrap icon-ribbon hide" data-idx="1">
							<div class="ribbon"></div>
						</div>
						
						<div class="icon-wrap icon-link hide" data-idx="2">
							<div class="loopback_l"></div>
							<div class="loopback_r"></div>
						</div>				
						<div class="icon-wrap icon-me hide" data-idx="3">
							<div class="user"></div>
							<div class="shoulder"></div>
						</div>
						
					</div>
					
				</div>
				<div class="tips-box hide">
					<div class="tips-arrow"></div>
					<ul class="tips-inner">
						<li>菜单</li>
						<li>标签</li>				
						<li>友情链接</li>				
						<li>关于我</li>						
					</ul>
				</div>
			</div>		
		<div class="switch-area">
			<div class="switch-wrap">
				<section class="switch-part switch-part1">
					<nav class="header-menu">
						<ul>
							<li><a href="../FaceBlog/index.jsp">主页</a></li>
							<li><a href="../FaceBlog/ArticleList.jsp">所有文章</a></li>
						</ul>
					</nav>
					<nav class="header-nav">
						<div class="social">
							
								<a class="weibo" target="_blank" href="http://www.weibo.com/tuijiankan" title="weibo">weibo</a>					        
								<a class="rss" target="_blank" href="http://www.jianshu.com/users/800725c1b4bc/latest_articles" title="rss">简</a>				        
								<a class="zhihu" target="_blank" href="https://www.zhihu.com/people/cheng-sheng-86" title="zhihu">zhihu</a>
					        
								<a class="douban" target="_blank" href="http://www.douban.com/people/joeedeng/" title="douban">douban</a>
					        
								<a class="mail" target="_blank" href="mailto:1115206778@qq.com" title="mail">mail</a>
					        
						</div>
					</nav>
				</section>	
				<section class="switch-part switch-part2">
					<div class="widget tagcloud" id="js-tagcloud">
						<a href="/tags/404/" style="font-size: 10px;">404</a> <a href="/tags/APP/" style="font-size: 10px;">APP</a> <a href="/tags/CSS/" style="font-size: 10px;">CSS</a> <a href="/tags/DDos/" style="font-size: 11.25px;">DDos</a> <a href="/tags/Mongodb/" style="font-size: 10px;">Mongodb</a> <a href="/tags/SEO/" style="font-size: 15px;">SEO</a> <a href="/tags/UI/" style="font-size: 10px;">UI</a> <a href="/tags/cdn/" style="font-size: 10px;">cdn</a> <a href="/tags/centos/" style="font-size: 10px;">centos</a> <a href="/tags/chrome插件/" style="font-size: 10px;">chrome插件</a> <a href="/tags/css/" style="font-size: 10px;">css</a> <a href="/tags/epub/" style="font-size: 10px;">epub</a> <a href="/tags/forever/" style="font-size: 10px;">forever</a> <a href="/tags/git/" style="font-size: 10px;">git</a> <a href="/tags/github/" style="font-size: 11.25px;">github</a> <a href="/tags/hexo/" style="font-size: 16.25px;">hexo</a> <a href="/tags/html5/" style="font-size: 10px;">html5</a> <a href="/tags/iTerm2/" style="font-size: 10px;">iTerm2</a> <a href="/tags/javascript/" style="font-size: 11.25px;">javascript</a> <a href="/tags/kindle/" style="font-size: 10px;">kindle</a> <a href="/tags/markdown/" style="font-size: 11.25px;">markdown</a> <a href="/tags/mongodb/" style="font-size: 11.25px;">mongodb</a> <a href="/tags/mweb/" style="font-size: 10px;">mweb</a> <a href="/tags/nginx/" style="font-size: 11.25px;">nginx</a> <a href="/tags/nodebb/" style="font-size: 10px;">nodebb</a> <a href="/tags/nodejs/" style="font-size: 13.75px;">nodejs</a> <a href="/tags/plugins/" style="font-size: 10px;">plugins</a> <a href="/tags/ssh/" style="font-size: 10px;">ssh</a> <a href="/tags/underscore/" style="font-size: 10px;">underscore</a> <a href="/tags/乔木阅读记录/" style="font-size: 18.75px;">乔木阅读记录</a> <a href="/tags/产品设计/" style="font-size: 11.25px;">产品设计</a> <a href="/tags/企业管理/" style="font-size: 10px;">企业管理</a> <a href="/tags/公司管理/" style="font-size: 10px;">公司管理</a> <a href="/tags/冰与火之歌/" style="font-size: 11.25px;">冰与火之歌</a> <a href="/tags/创业课/" style="font-size: 10px;">创业课</a> <a href="/tags/利器/" style="font-size: 10px;">利器</a> <a href="/tags/前端/" style="font-size: 10px;">前端</a> <a href="/tags/前端技术/" style="font-size: 10px;">前端技术</a> <a href="/tags/好习惯/" style="font-size: 10px;">好习惯</a> <a href="/tags/工作/" style="font-size: 10px;">工作</a> <a href="/tags/工具/" style="font-size: 10px;">工具</a> <a href="/tags/德鲁克/" style="font-size: 10px;">德鲁克</a> <a href="/tags/技术/" style="font-size: 10px;">技术</a> <a href="/tags/数据驱动/" style="font-size: 10px;">数据驱动</a> <a href="/tags/新产品/" style="font-size: 17.5px;">新产品</a> <a href="/tags/新员工/" style="font-size: 10px;">新员工</a> <a href="/tags/无觅/" style="font-size: 10px;">无觅</a> <a href="/tags/标题生成器/" style="font-size: 10px;">标题生成器</a> <a href="/tags/清单/" style="font-size: 10px;">清单</a> <a href="/tags/用户体验/" style="font-size: 11.25px;">用户体验</a> <a href="/tags/电子书/" style="font-size: 10px;">电子书</a> <a href="/tags/电脑狂人/" style="font-size: 10px;">电脑狂人</a> <a href="/tags/界面设计/" style="font-size: 10px;">界面设计</a> <a href="/tags/相关文章插件/" style="font-size: 10px;">相关文章插件</a> <a href="/tags/窦唯/" style="font-size: 10px;">窦唯</a> <a href="/tags/笑话/" style="font-size: 10px;">笑话</a> <a href="/tags/管理/" style="font-size: 10px;">管理</a> <a href="/tags/网站收录/" style="font-size: 13.75px;">网站收录</a> <a href="/tags/网站运营/" style="font-size: 10px;">网站运营</a> <a href="/tags/网络推广/" style="font-size: 15px;">网络推广</a> <a href="/tags/美剧/" style="font-size: 11.25px;">美剧</a> <a href="/tags/美图/" style="font-size: 10px;">美图</a> <a href="/tags/艳阳天/" style="font-size: 10px;">艳阳天</a> <a href="/tags/计划/" style="font-size: 10px;">计划</a> <a href="/tags/设计趋势/" style="font-size: 10px;">设计趋势</a> <a href="/tags/读书笔记/" style="font-size: 12.5px;">读书笔记</a> <a href="/tags/邮件群发/" style="font-size: 10px;">邮件群发</a> <a href="/tags/阅读记录/" style="font-size: 20px;">阅读记录</a> <a href="/tags/阿里云/" style="font-size: 11.25px;">阿里云</a> <a href="/tags/页面设计/" style="font-size: 10px;">页面设计</a> <a href="/tags/鸡汤/" style="font-size: 10px;">鸡汤</a> <a href="/tags/黑客攻击/" style="font-size: 11.25px;">黑客攻击</a>
					</div>
				</section>
							
				<section class="switch-part switch-part3">
					<div id="js-friends">				
			          <a target="_blank" class="main-nav-link switch-friends-link" href="http://www.huangye88.com/">黄页88</a>
			        
			          <a target="_blank" class="main-nav-link switch-friends-link" href="http://www.tianrunlin.com/">田润林的博客</a>
			        
			        </div>
				</section>			
				<section class="switch-part switch-part4">			
					<div id="js-aboutme">半个程序猿，喜欢心理学，为人有点单纯</div>
				</section>
				
			</div>
		</div>
	</header>				
</div>
    </div>
<Layout:block name="MyContent"></Layout:block> 
      <footer id="footer">
  <div class="outer">
    <div id="footer-info">
    	<div class="footer-left">
    		&copy; 2016 CS
    	</div>
      	<div class="footer-right">
      		
      	</div>
    </div>
  </div>
</footer>
    </div>
<link rel="stylesheet" href="../fancybox/jquery.fancybox.css" type="text/css" />
<script src="../js/jquery-1.7.1.js" type="text/javascript"></script>
<script src="../fancybox/jquery.fancybox.pack.js" type="text/javascript"></script>
<script src="../js/mobile.js" type="text/javascript"></script>
<script src="../js/main.js" type="text/javascript"></script>

  <Layout:block name="MyScript"></Layout:block>
  </div>
</body>
</html>