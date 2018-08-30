package lecture;

import java.sql.*;


/*
create table lecture(
seqno int(8) primary key not null,
title varchar(50) not null,
content varchar(500) not null,
writer  varchar(20) not null,
wdate DATETIME,
readID varchar(50) not null,
bbsAvailable int(11) 

);*/

public class Lecture {

	private int seqno;
	private String title;
	private String content;
	private String writer;
	private String wdate;
	private String readID;
	private int bbsAvailable;
	
	public int getSeqno() {
		return seqno;
	}
	public void setSeqno(int seqno) {
		this.seqno = seqno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getWdate() {
		return wdate;
	}
	public void setWdate(String wdate) {
		this.wdate = wdate;
	}
	public String getReadID() {
		return readID;
	}
	public void setReadID(String readID) {
		this.readID = readID;
	}
	public int getBbsAvailable() {
		return bbsAvailable;
	}
	public void setBbsAvailable(int bbsAvailable) {
		this.bbsAvailable = bbsAvailable;
	}
	
	
	
}
