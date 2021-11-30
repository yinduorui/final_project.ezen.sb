package com.helpkitchen.dto;


// 11/23 이민혁
public class BoardVO {
	
	private long bNum;
	private String bNickName;
	private String bTitle;
	private String bContent;
	private String bCredat;
	private String bHashTag;
	private long bVote;
	private long bViews;
	private byte[] bImage;
	
	
	public long getbNum() {
		return bNum;
	}
	public void setbNum(long bNum) {
		this.bNum = bNum;
	}
	public String getbNickName() {
		return bNickName;
	}
	public void setbNickName(String bNickName) {
		this.bNickName = bNickName;
	}
	public String getbTitle() {
		return bTitle;
	}
	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}
	public String getbContent() {
		return bContent;
	}
	public void setbContent(String bContent) {
		this.bContent = bContent;
	}
	public String getbCredat() {
		return bCredat;
	}
	public void setbCredat(String bCredat) {
		this.bCredat = bCredat;
	}
	public String getbHashTag() {
		return bHashTag;
	}
	public void setbHashTag(String bHashTag) {
		this.bHashTag = bHashTag;
	}
	public long getbVote() {
		return bVote;
	}
	public void setbVote(long bVote) {
		this.bVote = bVote;
	}
	public long getbViews() {
		return bViews;
	}
	public void setbViews(long bViews) {
		this.bViews = bViews;
	}
	public byte[] getbImage() {
		return bImage;
	}
	public void setbImage(byte[] bImage) {
		this.bImage = bImage;
	}
	

}