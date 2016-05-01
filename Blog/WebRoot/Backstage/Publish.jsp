<%@ taglib uri="Mytag" prefix="Layout"%>
<Layout:overwrite name="title">
I am title
</Layout:overwrite>
<Layout:overwrite name="Mycss">
	<link href="http://libs.useso.com/js/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
	<link href="http://libs.useso.com/js/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="../css/default.css">
	<link href="../css/editor.css" type="text/css" rel="stylesheet"/>
	<link href="../css/PublishStyle.css" type="text/css" rel="stylesheet"/>
</Layout:overwrite>

<Layout:overwrite name="MyContent">
<div class="mid-col">
	<form>
		<div id="themeDiv">
			<label for="theme">主题：</label>
			<input id="theme" type="text"/>
			<input type="submit" id="pub"value="发布"/>
		</div>
	<div class="htmleaf-container" style="border:1px solid #ccc;margin:0 10px">
		<div class="container-fluid">
			<div class="row">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 nopadding">
					    	<textarea id="txtEditor"></textarea>
					    	<div class="article-tag tagcloud">
								<ul  class="article-tag-list">
									<li class="article-tag-list-item" id="tagslist"></li>
								</ul>
							</div>
					    	<input id="tags1" class="tags"></input>
					    	<input id="tags2" class="tags"></input>
					    	<input id="tags3" class="tags"></input>
					    </div>
					</div>  
				</div>
			</div>
		</div>	
	</div>
	</form>
</Layout:overwrite>
<Layout:overwrite name="MyScript">
<script src="http://libs.useso.com/js/jquery/2.1.0/jquery.min.js"></script>
	<script src="http://libs.useso.com/js/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<script src="../js/editor.js"></script>
	<script type="text/javascript" charset=“utf-8”> 
		$(document).ready( function() {
         $("#txtEditor").Editor();   
         
    	});
		$("#tags1").change(function(){
			var a=$(this).val().split("/");
			var str=a[a.length-2];
			//通decodeURI进行解码
			str=decodeURI(str);
			$(this).val(str);
			$("#tagslist").html($("#tagslist").html()+"<a class='article-tag-list-link color1' href=''"+str+"'>"+str+"</a>'");
		})
		$("#tags2").change(function(){
			var a=$(this).val().split("/");
			var str=a[a.length-2];
			str=decodeURI(str);
			$(this).val(str);
			$("#tagslist").html($("#tagslist").html()+"<a class='article-tag-list-link color2' href=''"+str+"'>"+str+"</a>'");
		})
		$("#tags3").change(function(){
			var a=$(this).val().split("/");
			var str=a[a.length-2];
			str=decodeURI(str)
			$(this).val(str);
			$("#tagslist").html($("#tagslist").html()+"<a class='article-tag-list-link color3' href=''"+str+"'>"+str+"</a>'");
		})
		$("#pub").click(function(){
			var content=$("#txtEditor").Editor("getText");
			alert(content);
			var theme=$("#theme").val().trim();
			if(theme==""){return;}
			var tags1=$("#tags1").val();
			var tags2=$("#tags2").val();
			var tags3=$("#tags3").val();
			$.ajax({
	            url: "article-add",
	            type: "POST",    	            
	            data:{"article.atitle":theme,"article.acontent":content,"article.atabone":tags1,"article.atabtwo":tags2,"article.atabthree":tags3},
	            dataType: "json",
	            success: function (result){ 
	            	alert("");
	            	if(result.code=="1"){
	            		alert("cc");
	            		location.href="../FaceBlog/index.jsp"; 
	            	}else{
	            		alert(result.code);
	            	}
	            }
			})
	
		})
		
		
		
  	</script>
</Layout:overwrite>
<%@ include file="/share/Layout.jsp"%>