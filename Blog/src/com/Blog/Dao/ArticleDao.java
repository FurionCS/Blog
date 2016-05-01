package com.Blog.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Service;

import com.Blog.Bean.Article;
import com.Blog.Service.ArticleService;

@Service
public class ArticleDao extends BaseDao{
	public List<Article> getAll(){
		String hql="FROM Article";
		Query query=getSession().createQuery(hql);
		query.setCacheable(true);
		return query.list();
	}
	/**
	 * 得到文章列表通过分页
	 * @param orderby
	 * @param strWhere
	 * @param pageSize
	 * @param pageIndex
	 * @return
	 */
	public List<Article> getArticleByPage(String orderby,String strWhere,int pageSize,int pageIndex){
		String hql="From Article where "+strWhere+" order by "+orderby;
		List<Article> la=null;
		try{
			Query query=getSession().createQuery(hql);
			query.setCacheable(true);
			la=query.setFirstResult((pageIndex - 1) * pageSize).setMaxResults(pageSize).list();
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		return la;
	}
	/**
	 * 添加一条文章
	 * @param article
	 * @return
	 */
	public boolean add(Article article){
		try{ 
			getSession().save(article);
			}catch(Exception e){
			System.out.println(e.getMessage());
			return false;
		}
		return true;
	}
	/**
	 * 得到文章总数
	 * @return int
	 */
	public int getCount(){
		String hql="from Article";
		Query query=getSession().createQuery(hql);
		query.setCacheable(true);
		return query.list().size();
	}
	/**
	 * 得到文章具体信息
	 * @param id
	 * @return
	 */
	public Article info(int id){
		return (Article) getSession().get(Article.class, id);
	}
}
