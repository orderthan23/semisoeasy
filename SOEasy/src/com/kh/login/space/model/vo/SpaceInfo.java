package com.kh.login.space.model.vo;

import java.sql.Date;

public class SpaceInfo implements java.io.Serializable {
	private int spaceNo;					//공간번호
	private String SpaceName;				//공간명
	private String convNo;					//
	private int hostNo;						//호스트번호
	private int spaceKind;					//공간종류
	private String spacdAddress;			//공간주소
	private String spaceStatus;				//공개여부
	private String spaceIntro;				//공간소개글
	private String spacePayPolicy;			//가격정책
	private String didDayReserve;			//일별 예약 여부
	private int dayPayNumber;				//일당 가격
	private String didMonthReserve;			//월별 예약 여부
	private int monthPay;					//월당 가격
	private int day;						//요일
	private int startTime;					//시작시간
	private int endTime;					//종료시간
	private String OpenCheck;				//휴무여부
	private int reviewNo;					//리뷰번호
	private int MemberNo;					//게스트번호
	private String reviewContent;			//후기내용
	private int rPoint;						//평점
	private Date rEnrollDate;				//작성날짜
	
	public SpaceInfo() {}

	public SpaceInfo(int spaceNo, String spaceName, String convNo, int hostNo, int spaceKind, String spacdAddress,
			String spaceStatus, String spaceIntro, String spacePayPolicy, String didDayReserve, int dayPayNumber,
			String didMonthReserve, int monthPay, int day, int startTime, int endTime, String openCheck, int reviewNo,
			int memberNo, String reviewContent, int rPoint, Date rEnrollDate) {
		super();
		this.spaceNo = spaceNo;
		SpaceName = spaceName;
		this.convNo = convNo;
		this.hostNo = hostNo;
		this.spaceKind = spaceKind;
		this.spacdAddress = spacdAddress;
		this.spaceStatus = spaceStatus;
		this.spaceIntro = spaceIntro;
		this.spacePayPolicy = spacePayPolicy;
		this.didDayReserve = didDayReserve;
		this.dayPayNumber = dayPayNumber;
		this.didMonthReserve = didMonthReserve;
		this.monthPay = monthPay;
		this.day = day;
		this.startTime = startTime;
		this.endTime = endTime;
		OpenCheck = openCheck;
		this.reviewNo = reviewNo;
		MemberNo = memberNo;
		this.reviewContent = reviewContent;
		this.rPoint = rPoint;
		this.rEnrollDate = rEnrollDate;
	}

	public int getSpaceNo() {
		return spaceNo;
	}

	public String getSpaceName() {
		return SpaceName;
	}

	public String getConvNo() {
		return convNo;
	}

	public int getHostNo() {
		return hostNo;
	}

	public int getSpaceKind() {
		return spaceKind;
	}

	public String getSpacdAddress() {
		return spacdAddress;
	}

	public String getSpaceStatus() {
		return spaceStatus;
	}

	public String getSpaceIntro() {
		return spaceIntro;
	}

	public String getSpacePayPolicy() {
		return spacePayPolicy;
	}

	public String getDidDayReserve() {
		return didDayReserve;
	}

	public int getDayPayNumber() {
		return dayPayNumber;
	}

	public String getDidMonthReserve() {
		return didMonthReserve;
	}

	public int getMonthPay() {
		return monthPay;
	}

	public int getDay() {
		return day;
	}

	public int getStartTime() {
		return startTime;
	}

	public int getEndTime() {
		return endTime;
	}

	public String getOpenCheck() {
		return OpenCheck;
	}

	public int getReviewNo() {
		return reviewNo;
	}

	public int getMemberNo() {
		return MemberNo;
	}

	public String getReviewContent() {
		return reviewContent;
	}

	public int getrPoint() {
		return rPoint;
	}

	public Date getrEnrollDate() {
		return rEnrollDate;
	}

	public void setSpaceNo(int spaceNo) {
		this.spaceNo = spaceNo;
	}

	public void setSpaceName(String spaceName) {
		SpaceName = spaceName;
	}

	public void setConvNo(String convNo) {
		this.convNo = convNo;
	}

	public void setHostNo(int hostNo) {
		this.hostNo = hostNo;
	}

	public void setSpaceKind(int spaceKind) {
		this.spaceKind = spaceKind;
	}

	public void setSpacdAddress(String spacdAddress) {
		this.spacdAddress = spacdAddress;
	}

	public void setSpaceStatus(String spaceStatus) {
		this.spaceStatus = spaceStatus;
	}

	public void setSpaceIntro(String spaceIntro) {
		this.spaceIntro = spaceIntro;
	}

	public void setSpacePayPolicy(String spacePayPolicy) {
		this.spacePayPolicy = spacePayPolicy;
	}

	public void setDidDayReserve(String didDayReserve) {
		this.didDayReserve = didDayReserve;
	}

	public void setDayPayNumber(int dayPayNumber) {
		this.dayPayNumber = dayPayNumber;
	}

	public void setDidMonthReserve(String didMonthReserve) {
		this.didMonthReserve = didMonthReserve;
	}

	public void setMonthPay(int monthPay) {
		this.monthPay = monthPay;
	}

	public void setDay(int day) {
		this.day = day;
	}

	public void setStartTime(int startTime) {
		this.startTime = startTime;
	}

	public void setEndTime(int endTime) {
		this.endTime = endTime;
	}

	public void setOpenCheck(String openCheck) {
		OpenCheck = openCheck;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}

	public void setMemberNo(int memberNo) {
		MemberNo = memberNo;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	public void setrPoint(int rPoint) {
		this.rPoint = rPoint;
	}

	public void setrEnrollDate(Date rEnrollDate) {
		this.rEnrollDate = rEnrollDate;
	}

	@Override
	public String toString() {
		return "SpaceInfo [spaceNo=" + spaceNo + ", SpaceName=" + SpaceName + ", convNo=" + convNo + ", hostNo="
				+ hostNo + ", spaceKind=" + spaceKind + ", spacdAddress=" + spacdAddress + ", spaceStatus="
				+ spaceStatus + ", spaceIntro=" + spaceIntro + ", spacePayPolicy=" + spacePayPolicy + ", didDayReserve="
				+ didDayReserve + ", dayPayNumber=" + dayPayNumber + ", didMonthReserve=" + didMonthReserve
				+ ", monthPay=" + monthPay + ", day=" + day + ", startTime=" + startTime + ", endTime=" + endTime
				+ ", OpenCheck=" + OpenCheck + ", reviewNo=" + reviewNo + ", MemberNo=" + MemberNo + ", reviewContent="
				+ reviewContent + ", rPoint=" + rPoint + ", rEnrollDate=" + rEnrollDate + "]";
	}
	
	
	
	
}
