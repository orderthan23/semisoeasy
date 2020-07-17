package com.kh.login.space.model.vo;

public class Review {

	private int reviewNo;
	private int spaceNo;
	private int memberNo;
	private String reviewContent;
	private int rPoint;
	private String enrollDate;
	
	public Review(int reviewNo, int spaceNo, int memberNo, String reviewContent, int rPoint, String enrollDate) {
		super();
		this.reviewNo = reviewNo;
		this.spaceNo = spaceNo;
		this.memberNo = memberNo;
		this.reviewContent = reviewContent;
		this.rPoint = rPoint;
		this.enrollDate = enrollDate;
	}

	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}

	public int getSpaceNo() {
		return spaceNo;
	}

	public void setSpaceNo(int spaceNo) {
		this.spaceNo = spaceNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getReviewContent() {
		return reviewContent;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	public int getrPoint() {
		return rPoint;
	}

	public void setrPoint(int rPoint) {
		this.rPoint = rPoint;
	}

	public String getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}

	@Override
	public String toString() {
		return "Review [reviewNo=" + reviewNo + ", spaceNo=" + spaceNo + ", memberNo=" + memberNo + ", reviewContent="
				+ reviewContent + ", rPoint=" + rPoint + ", enrollDate=" + enrollDate + "]";
	}
	
}
