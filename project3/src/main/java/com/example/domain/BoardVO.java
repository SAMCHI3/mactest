package com.example.domain;

import java.util.Date;

public class BoardVO {
	private int bno;
	private String bid;
	private Date bdate;
	private String bcontent;
	private String bimage;
	private String bcount;
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public Date getBdate() {
		return bdate;
	}
	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}
	public String getBcontent() {
		return bcontent;
	}
	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	public String getBimage() {
		return bimage;
	}
	public void setBimage(String bimage) {
		this.bimage = bimage;
	}
	public String getBcount() {
		return bcount;
	}
	public void setBcount(String bcount) {
		this.bcount = bcount;
	}
	@Override
	public String toString() {
		return "BoardVO [bno=" + bno + ", bid=" + bid + ", bdate=" + bdate + ", bcontent="
				+ bcontent + ", bimage=" + bimage + ", bcount=" + bcount + "]";
	}
	
	
	
}
