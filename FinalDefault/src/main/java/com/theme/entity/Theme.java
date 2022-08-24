package com.theme.entity;

public class Theme {
	private int theme_seq;
	private String theme_name;
	private String theme_lang;
	private String theme_font;
	private String theme_likes;
	private String theme_col1;
	private String theme_col2;
	private String theme_col3;
	private String theme_col4;
	private String theme_col5;

	public Theme() {
		super();
	}

	public Theme(int theme_seq, String theme_name, String theme_lang, String theme_font, String theme_likes,
			String theme_col1, String theme_col2, String theme_col3, String theme_col4, String theme_col5) {
		super();
		this.theme_seq = theme_seq;
		this.theme_name = theme_name;
		this.theme_lang = theme_lang;
		this.theme_font = theme_font;
		this.theme_likes = theme_likes;
		this.theme_col1 = theme_col1;
		this.theme_col2 = theme_col2;
		this.theme_col3 = theme_col3;
		this.theme_col4 = theme_col4;
		this.theme_col5 = theme_col5;
	}

	public int getTheme_seq() {
		return theme_seq;
	}

	public void setTheme_seq(int theme_seq) {
		this.theme_seq = theme_seq;
	}

	public String getTheme_name() {
		return theme_name;
	}

	public void setTheme_name(String theme_name) {
		this.theme_name = theme_name;
	}

	public String getTheme_lang() {
		return theme_lang;
	}

	public void setTheme_lang(String theme_lang) {
		this.theme_lang = theme_lang;
	}

	public String getTheme_font() {
		return theme_font;
	}

	public void setTheme_font(String theme_font) {
		this.theme_font = theme_font;
	}

	public String getTheme_likes() {
		return theme_likes;
	}

	public void setTheme_likes(String theme_likes) {
		this.theme_likes = theme_likes;
	}

	public String getTheme_col1() {
		return theme_col1;
	}

	public void setTheme_col1(String theme_col1) {
		this.theme_col1 = theme_col1;
	}

	public String getTheme_col2() {
		return theme_col2;
	}

	public void setTheme_col2(String theme_col2) {
		this.theme_col2 = theme_col2;
	}

	public String getTheme_col3() {
		return theme_col3;
	}

	public void setTheme_col3(String theme_col3) {
		this.theme_col3 = theme_col3;
	}

	public String getTheme_col4() {
		return theme_col4;
	}

	public void setTheme_col4(String theme_col4) {
		this.theme_col4 = theme_col4;
	}

	public String getTheme_col5() {
		return theme_col5;
	}

	public void setTheme_col5(String theme_col5) {
		this.theme_col5 = theme_col5;
	}

	@Override
	public String toString() {
		return "Theme [theme_seq=" + theme_seq + ", theme_name=" + theme_name + ", theme_lang=" + theme_lang
				+ ", theme_font=" + theme_font + ", theme_likes=" + theme_likes + ", theme_col1=" + theme_col1
				+ ", theme_col2=" + theme_col2 + ", theme_col3=" + theme_col3 + ", theme_col4=" + theme_col4
				+ ", theme_col5=" + theme_col5 + "]";
	}

	
}