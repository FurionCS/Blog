package com.Blog.Action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

import com.Blog.Bean.Article;
import com.Blog.Bean.Page;
import com.Blog.Service.ArticleService;
import com.opensymphony.xwork2.ActionSupport;


@Controller
public class ArticleAction extends ActionSupport implements ServletResponseAware{
	private Article article;
	public Article getArticle() {
		return article;
	}
	public void setArticle(Article article) {
		this.article = article;
	}
	private Page page;
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	@Autowired
	private ArticleService articleService;
	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}
	public String list() throws IOException{
		List<Article> la=articleService.getArticleByPage(page.getOrderby(), page.getStrWhere(),page.getPageSize(), page.getPageIndex());
		response.setCharacterEncoding("utf-8");
		JSONObject jb =new JSONObject();
		if(la.size()>0){
			jb.put("count", articleService.getCount());
			jb.put("code", 1);
			jb.put("la", la);
		}else{
			jb.put("code", 0);
		}
		PrintWriter out=response.getWriter();
		out.print(jb);
		return null;
	}
	public String add() throws IOException{
		article.setApublishtime(new Date());
		response.setCharacterEncoding("utf-8");
		JSONObject jb =new JSONObject();
		try{
			articleService.add(article);
			jb.put("code", 1);
		}catch(Exception e){
			jb.put("code", 0);
		}
		PrintWriter out=response.getWriter();
		out.print(jb);
		return null;
	}
	public String info() throws IOException{
		response.setCharacterEncoding("utf-8");
		JSONObject jb =new JSONObject();
		try{
			article=articleService.info(article.getAid());
			jb.put("code",1);
			jb.put("info",article);
		}catch(Exception e){
			jb.put("code",0);
		}
		PrintWriter out=response.getWriter();
		out.print(jb);
		return null;
	}
	public String ListInfo(){
		List<Article> la=articleService.getArticleByPage(page.getOrderby(), page.getStrWhere(),page.getPageSize(), page.getPageIndex());
		return "";
	}
	private ServletResponse response;
	public void setServletResponse(HttpServletResponse arg0) {
		response=arg0;
	}
	 
}
