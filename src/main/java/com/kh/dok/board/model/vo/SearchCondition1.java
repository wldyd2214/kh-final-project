package com.kh.dok.board.model.vo;

import org.springframework.stereotype.Repository;

@Repository
public class SearchCondition1 implements java.io.Serializable{
	private String btitle;
	private String bcontent;
	
	public SearchCondition1(){}

	public SearchCondition1(String btitle, String bcontent) {
		super();
		this.btitle = btitle;
		this.bcontent = bcontent;
	}
  
	public String getBtitle() {
		return btitle;
	}

	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}

	public String getBcontent() {
		return bcontent;
	}

	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}

	@Override
	public String toString() {
		return "SearchCondition [btitle=" + btitle + ", bcontent=" + bcontent + "]";
	}
	
	
	
}
