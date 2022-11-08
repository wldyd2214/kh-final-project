package com.kh.dok.admin.model.vo;

import org.springframework.stereotype.Repository;

@Repository
public class SearchCondition implements java.io.Serializable{
	private String searchResult;
	private String searchCondition;
	
	public SearchCondition(){}
	
	
	public String getSearchResult() {
		return searchResult;
	}
	public void setSearchResult(String searchResult) {
		this.searchResult = searchResult;
	}
	public String getSearchCondition() {
		return searchCondition;
	}
	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}
	public SearchCondition(String searchResult, String searchCondition) {
		super();
		this.searchResult = searchResult;
		this.searchCondition = searchCondition;
	}
	@Override
	public String toString() {
		return "SearchCondition [searchResult=" + searchResult + ", searchCondition=" + searchCondition + "]";
	}
	
	
}
