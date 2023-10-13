package com.itbank.model;

/* 
 * 이름       널?       유형            
	-------- -------- ------------- 
	IDX      NOT NULL NUMBER        
	USERID   NOT NULL VARCHAR2(100) 
	USERPW   NOT NULL VARCHAR2(100) 
	USERNAME NOT NULL VARCHAR2(100) 
	SALT     NOT NULL VARCHAR2(300) 

 * */
public class AccountDTO {
	private int idx;
	private String userid;
	private String userpw;
	private String username;
	private String salt;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
	
	
}
