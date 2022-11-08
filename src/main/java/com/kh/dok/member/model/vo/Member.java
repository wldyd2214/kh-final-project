package com.kh.dok.member.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Repository;

@Repository
public class Member implements java.io.Serializable{
	private String mid;
	private String email;
	private String user_pwd;
	private String user_name;
	private String birthday;
	private String gender;
	private String phone;
	private String user_class;
	private String status;
	private String login_class;
	private String blacklist_status;
	private String join_date;
	private String withdraw_date;
	private String nickname;
	private String refreshToken;
	private String new_pass;
	private String rid;  
	private String edit_name;
	
	public Member(){}

	public String getMid() {
		return mid;
	}

	public String getEmail() {
		return email;
	}

	public String getUser_pwd() {
		return user_pwd;
	}

	public String getUser_name() {
		return user_name;
	}

	public String getBirthday() {
		return birthday;
	}

	public String getGender() {
		return gender;
	}

	public String getPhone() {
		return phone;
	}

	public String getUser_class() {
		return user_class;
	}

	public String getStatus() {
		return status;
	}

	public String getLogin_class() {
		return login_class;
	}

	public String getBlacklist_status() {
		return blacklist_status;
	}

	public String getJoin_date() {
		return join_date;
	}

	public String getWithdraw_date() {
		return withdraw_date;
	}

	public String getNickname() {
		return nickname;
	}

	public String getRefreshToken() {
		return refreshToken;
	}

	public String getNew_pass() {
		return new_pass;
	}

	public String getRid() {
		return rid;
	}

	public String getEdit_name() {
		return edit_name;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setUser_class(String user_class) {
		this.user_class = user_class;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public void setLogin_class(String login_class) {
		this.login_class = login_class;
	}

	public void setBlacklist_status(String blacklist_status) {
		this.blacklist_status = blacklist_status;
	}

	public void setJoin_date(String join_date) {
		this.join_date = join_date;
	}

	public void setWithdraw_date(String withdraw_date) {
		this.withdraw_date = withdraw_date;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public void setRefreshToken(String refreshToken) {
		this.refreshToken = refreshToken;
	}

	public void setNew_pass(String new_pass) {
		this.new_pass = new_pass;
	}

	public void setRid(String rid) {
		this.rid = rid;
	}

	public void setEdit_name(String edit_name) {
		this.edit_name = edit_name;
	}

	@Override
	public String toString() {
		return "Member [mid=" + mid + ", email=" + email + ", user_pwd=" + user_pwd + ", user_name=" + user_name
				+ ", birthday=" + birthday + ", gender=" + gender + ", phone=" + phone + ", user_class=" + user_class
				+ ", status=" + status + ", login_class=" + login_class + ", blacklist_status=" + blacklist_status
				+ ", join_date=" + join_date + ", withdraw_date=" + withdraw_date + ", nickname=" + nickname
				+ ", refreshToken=" + refreshToken + ", new_pass=" + new_pass + ", rid=" + rid + ", edit_name="
				+ edit_name + "]";
	}

	public Member(String mid, String email, String user_pwd, String user_name, String birthday, String gender,
			String phone, String user_class, String status, String login_class, String blacklist_status,
			String join_date, String withdraw_date, String nickname, String refreshToken, String new_pass, String rid,
			String edit_name) {
		super();
		this.mid = mid;
		this.email = email;
		this.user_pwd = user_pwd;
		this.user_name = user_name;
		this.birthday = birthday;
		this.gender = gender;
		this.phone = phone;
		this.user_class = user_class;
		this.status = status;
		this.login_class = login_class;
		this.blacklist_status = blacklist_status;
		this.join_date = join_date;
		this.withdraw_date = withdraw_date;
		this.nickname = nickname;
		this.refreshToken = refreshToken;
		this.new_pass = new_pass;
		this.rid = rid;
		this.edit_name = edit_name;
	}



	

}
