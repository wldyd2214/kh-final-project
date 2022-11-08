package com.kh.dok.admin.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Repository;

@Repository
public class ReportHistory implements java.io.Serializable{
	
	private String rep_id;
	private String rid;
	private String rep_userid;
	private String rep_level;
	private String rep_content;
	private Date treat_date;
	private String reped_userid;
	
	public ReportHistory(){}

	public String getRep_id() {
		return rep_id;
	}

	public void setRep_id(String rep_id) {
		this.rep_id = rep_id;
	}

	public String getRid() {
		return rid;
	}

	public void setRid(String rid) {
		this.rid = rid;
	}

	public String getRep_userid() {
		return rep_userid;
	}

	public void setRep_userid(String rep_userid) {
		this.rep_userid = rep_userid;
	}

	public String getRep_level() {
		return rep_level;
	}

	public void setRep_level(String rep_level) {
		this.rep_level = rep_level;
	}

	public String getRep_content() {
		return rep_content;
	}

	public void setRep_content(String rep_content) {
		this.rep_content = rep_content;
	}

	public Date getTreat_date() {
		return treat_date;
	}

	public void setTreat_date(Date treat_date) {
		this.treat_date = treat_date;
	}

	public String getReped_userid() {
		return reped_userid;
	}

	public void setReped_userid(String reped_userid) {
		this.reped_userid = reped_userid;
	}

	public ReportHistory(String rep_id, String rid, String rep_userid, String rep_level, String rep_content,
			Date treat_date, String reped_userid) {
		super();
		this.rep_id = rep_id;
		this.rid = rid;
		this.rep_userid = rep_userid;
		this.rep_level = rep_level;
		this.rep_content = rep_content;
		this.treat_date = treat_date;
		this.reped_userid = reped_userid;
	}

	@Override
	public String toString() {
		return "ReportHistory [rep_id=" + rep_id + ", rid=" + rid + ", rep_userid=" + rep_userid + ", rep_level="
				+ rep_level + ", rep_content=" + rep_content + ", treat_date=" + treat_date + ", reped_userid="
				+ reped_userid + "]";
	}
	
}
