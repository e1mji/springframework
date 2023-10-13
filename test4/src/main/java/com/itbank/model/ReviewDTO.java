package com.itbank.model;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;


/*
 * 이름       널?       유형             
	-------- -------- -------------- 
	IDX      NOT NULL NUMBER         
	TITLE    NOT NULL VARCHAR2(200)  
	WRITER   NOT NULL VARCHAR2(100)  
	CONTENT  NOT NULL VARCHAR2(4000) 
	FILENAME          VARCHAR2(255)  
	WDATE             DATE      
 *  
 *  */
public class ReviewDTO {
	private int idx;
	private String title;
	private String writer;
	private String content;
	private String fileName;
	private Date wdate;
	
	private MultipartFile upload;

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public Date getWdate() {
		return wdate;
	}

	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}

	public MultipartFile getUpload() {
		return upload;
	}

	public void setUpload(MultipartFile upload) {
		this.upload = upload;
	}

	
	
	
	
}
