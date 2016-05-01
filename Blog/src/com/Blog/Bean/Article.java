package com.Blog.Bean;

import java.util.Date;

public class Article {
	private int aid;
	private String atitle;
	private String acontent;
	private String atabone;
	private String atabtwo;
	private String atabthree;
	private Date apublishtime;
	private int acount;
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAtitle() {
		return atitle;
	}
	public void setAtitle(String atitle) {
		this.atitle = atitle;
	}
	public String getAcontent() {
		return acontent;
	}

	public void setAcontent(String acontent) {
		this.acontent = acontent;
	}

	public String getAtabone() {
		return atabone;
	}

	public void setAtabone(String atabone) {
		this.atabone = atabone;
	}

	public String getAtabtwo() {
		return atabtwo;
	}

	public void setAtabtwo(String atabtwo) {
		this.atabtwo = atabtwo;
	}

	public String getAtabthree() {
		return atabthree;
	}

	public void setAtabthree(String atabthree) {
		this.atabthree = atabthree;
	}

	public Date getApublishtime() {
		return apublishtime;
	}

	public void setApublishtime(Date apublishtime) {
		this.apublishtime = apublishtime;
	}

	public int getAcount() {
		return acount;
	}

	public void setAcount(int acount) {
		this.acount = acount;
	}

	public Article() {
		super();
	}
	
	
}
