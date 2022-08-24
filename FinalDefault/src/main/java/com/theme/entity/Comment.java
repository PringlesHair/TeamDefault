package com.theme.entity;

public class Comment {
	private int cmt_seq;
	private int b_seq;
	private String cmt_content;
	private String cmt_date;
	private String user_id;
	
	public Comment() {
		super();
	}

	public Comment(int cmt_seq, int b_seq, String cmt_content, String cmt_date, String user_id) {
		super();
		this.cmt_seq = cmt_seq;
		this.b_seq = b_seq;
		this.cmt_content = cmt_content;
		this.cmt_date = cmt_date;
		this.user_id = user_id;
	}

	public int getCmt_seq() {
		return cmt_seq;
	}

	public void setCmt_seq(int cmt_seq) {
		this.cmt_seq = cmt_seq;
	}

	public int getB_seq() {
		return b_seq;
	}

	public void setB_seq(int b_seq) {
		this.b_seq = b_seq;
	}

	public String getCmt_content() {
		return cmt_content;
	}

	public void setCmt_content(String cmt_content) {
		this.cmt_content = cmt_content;
	}

	public String getCmt_date() {
		return cmt_date;
	}

	public void setCmt_date(String cmt_date) {
		this.cmt_date = cmt_date;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	@Override
	public String toString() {
		return "Comment [cmt_seq=" + cmt_seq + ", b_seq=" + b_seq + ", cmt_content=" + cmt_content + ", cmt_date="
				+ cmt_date + ", user_id=" + user_id + "]";
	}
	
	
}