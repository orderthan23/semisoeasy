package com.kh.login.space.model.vo;

public class SpaceReservation implements java.io.Serializable {

	private int reservNo;			//예약번호
	private int guestNo;			//게스트번호
	private int spaceNo;			//공간번호
	private String fixUnfix;		//자유지정석여부
	private int officeNo;			//호실번호
	private String startDate;		//사용시작날짜
	private String endDate;			//사용종료날짜
	private int reservPersonCount;	//예약인원
	private String didHostOk;		//호스트 승인 여부 	wait (디폴트 값)
	private int reservStatus;		//예약상태	      	1	 (디폴트 값)
	private String didReview;		//리뷰작성여부		wait (디폴트 값)
	private String reservDate;		//예약날짜
	private int expectPay;
	
	public SpaceReservation() {
		
	}

	public SpaceReservation(int reservNo, int guestNo, int spaceNo, String fixUnfix, int officeNo, String startDate,
			String endDate, int reservPersonCount, String didHostOk, int reservStatus, String didReview,
			String reservDate, int expectPay) {
		super();
		this.reservNo = reservNo;
		this.guestNo = guestNo;
		this.spaceNo = spaceNo;
		this.fixUnfix = fixUnfix;
		this.officeNo = officeNo;
		this.startDate = startDate;
		this.endDate = endDate;
		this.reservPersonCount = reservPersonCount;
		this.didHostOk = didHostOk;
		this.reservStatus = reservStatus;
		this.didReview = didReview;
		this.reservDate = reservDate;
		this.expectPay = expectPay;
	}

	public int getReservNo() {
		return reservNo;
	}

	public void setReservNo(int reservNo) {
		this.reservNo = reservNo;
	}

	public int getGuestNo() {
		return guestNo;
	}

	public void setGuestNo(int guestNo) {
		this.guestNo = guestNo;
	}

	public int getSpaceNo() {
		return spaceNo;
	}

	public void setSpaceNo(int spaceNo) {
		this.spaceNo = spaceNo;
	}

	public String getFixUnfix() {
		return fixUnfix;
	}

	public void setFixUnfix(String fixUnfix) {
		this.fixUnfix = fixUnfix;
	}

	public int getOfficeNo() {
		return officeNo;
	}

	public void setOfficeNo(int officeNo) {
		this.officeNo = officeNo;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public int getReservPersonCount() {
		return reservPersonCount;
	}

	public void setReservPersonCount(int reservPersonCount) {
		this.reservPersonCount = reservPersonCount;
	}

	public String getDidHostOk() {
		return didHostOk;
	}

	public void setDidHostOk(String didHostOk) {
		this.didHostOk = didHostOk;
	}

	public int getReservStatus() {
		return reservStatus;
	}

	public void setReservStatus(int reservStatus) {
		this.reservStatus = reservStatus;
	}

	public String getDidReview() {
		return didReview;
	}

	public void setDidReview(String didReview) {
		this.didReview = didReview;
	}

	public String getReservDate() {
		return reservDate;
	}

	public void setReservDate(String reservDate) {
		this.reservDate = reservDate;
	}
	
	public int getExpectPay() {
		return expectPay;
	}
	
	public void setExpectPay(int expectPay) {
		this.expectPay = expectPay;
	}

	@Override
	public String toString() {
		return "SpaceReservation [reservNo=" + reservNo + ", guestNo=" + guestNo + ", spaceNo=" + spaceNo
				+ ", fixUnfix=" + fixUnfix + ", officeNo=" + officeNo + ", startDate=" + startDate + ", endDate="
				+ endDate + ", reservPersonCount=" + reservPersonCount + ", didHostOk=" + didHostOk + ", reservStatus="
				+ reservStatus + ", didReview=" + didReview + ", reservDate=" + reservDate + ", expectPay=" + expectPay
				+ "]";
	}

}



















