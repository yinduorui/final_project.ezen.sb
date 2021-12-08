package com.helpkitchen.dto;


// 11/23 이민혁
public class BoardVO {
	
	private long bNum;
	private String bId;
	private String bNickName;
	private String bTitle;
	private String bContent;
	private String bCredat;
	private String bTag;
	private long bVote;
	private long bViews;
	private String bImageUrl;
	
	public long getbNum() {
		return bNum;
	}
	public void setbNum(long bNum) {
		this.bNum = bNum;
	}
	public String getbId() {
		return bId;
	}
	public void setbId(String bId) {
		this.bId = bId;
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
	public String getbTag() {
		return bTag;
	}
	public void setbTag(String bTag) {
		this.bTag = bTag;
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
	public String getbImageUrl() {
		return bImageUrl;
	}
	public void setbImageUrl(String bImageUrl) {
		this.bImageUrl = bImageUrl;
	}
	
	
}