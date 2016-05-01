package com.Blog.Service;

import java.util.List;

import com.Blog.Bean.Article;
import com.Blog.Dao.ArticleDao;

public class ArticleService {
	private ArticleDao articleDao;
	public void setArticleDao(ArticleDao articleDao) {
		this.articleDao = articleDao;
	}
	public List<Article> getAll(){
		return articleDao.getAll();
	}
	public List<Article> getArticleByPage(String orderby,String strWhere,int pageSize,int pageIndex){
		return articleDao.getArticleByPage(orderby, strWhere, pageSize, pageIndex);
	}
	public boolean add(Article article){
		return articleDao.add(article);
	}
	public int getCount(){
		return articleDao.getCount();
	}
	public Article info(int id){
		return articleDao.info(id);
	}
}
