package com.kh.login.host.manageReserve.model.vo;

import java.sql.Date;

public class PaymentRequest implements java.io.Serializable{

	private int reserveNo;					//예약번호
	private String guestNo;					//게스트번호
	private int spaceNo;					//공간번호
	private int officeNo;					//호실번호
	private int hostNo;						//호스트번호
	private String SpaceName;				//공간명
	private int spaceKind;					//공간종류
	private String spacdAddress;			//공간주소
	private String didDayReserve;			//일별 예약 여부
	private int dayPayNumber;				//일당 가격
	private String didMonthReserve;			//월별 예약 여부
	private int monthPay;					//월당 가격
	private String didHostOk;				//호스트 승인 여부
	private int day;						//요일
	private int startTime;					//시작시간
	private int endTime;					//종료시간
	private int MemberNo;					//게스트번호
	private int reservePersonCount;			//예약인원
	private int reserveStatus;				//예약상태
	private Date startDay;					//사용시작날짜
	private Date endDay;					//사용종료날짜
	private Date reserveDate;				//예약날짜
	private String guestId;					//게스트아이디
	private String guestName;				//게스트이름
	private int payAmount;					//결제예정금액
	
	public PaymentRequest() {}

	public PaymentRequest(int reserveNo, String guestNo, int spaceNo, int officeNo, int hostNo, String spaceName,
			int spaceKind, String spacdAddress, String didDayReserve, int dayPayNumber, String didMonthReserve,
			int monthPay, String didHostOk, int day, int startTime, int endTime, int memberNo, int reservePersonCount,
			int reserveStatus, Date startDay, Date endDay, Date reserveDate, String guestId, String guestName,
			int payAmount) {
		super();
		this.reserveNo = reserveNo;
		this.guestNo = guestNo;
		this.spaceNo = spaceNo;
		this.officeNo = officeNo;
		this.hostNo = hostNo;
		SpaceName = spaceName;
		this.spaceKind = spaceKind;
		this.spacdAddress = spacdAddress;
		this.didDayReserve = didDayReserve;
		this.dayPayNumber = dayPayNumber;
		this.didMonthReserve = didMonthReserve;
		this.monthPay = monthPay;
		this.didHostOk = didHostOk;
		this.day = day;
		this.startTime = startTime;
		this.endTime = endTime;
		MemberNo = memberNo;
		this.reservePersonCount = reservePersonCount;
		this.reserveStatus = reserveStatus;
		this.startDay = startDay;
		this.endDay = endDay;
		this.reserveDate = reserveDate;
		this.guestId = guestId;
		this.guestName = guestName;
		this.payAmount = payAmount;
	}

	public int getReserveNo() {
		return reserveNo;
	}

	public String getGuestNo() {
		return guestNo;
	}

	public int getSpaceNo() {
		return spaceNo;
	}

	public int getOfficeNo() {
		return officeNo;
	}

	public int getHostNo() {
		return hostNo;
	}

	public String getSpaceName() {
		return SpaceName;
	}

	public int getSpaceKind() {
		return spaceKind;
	}

	public String getSpacdAddress() {
		return spacdAddress;
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

	public String getDidHostOk() {
		return didHostOk;
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

	public int getMemberNo() {
		return MemberNo;
	}

	public int getReservePersonCount() {
		return reservePersonCount;
	}

	public int getReserveStatus() {
		return reserveStatus;
	}

	public Date getStartDay() {
		return startDay;
	}

	public Date getEndDay() {
		return endDay;
	}

	public Date getReserveDate() {
		return reserveDate;
	}

	public String getGuestId() {
		return guestId;
	}

	public String getGuestName() {
		return guestName;
	}

	public int getPayAmount() {
		return payAmount;
	}

	public void setReserveNo(int reserveNo) {
		this.reserveNo = reserveNo;
	}

	public void setGuestNo(String guestNo) {
		this.guestNo = guestNo;
	}

	public void setSpaceNo(int spaceNo) {
		this.spaceNo = spaceNo;
	}

	public void setOfficeNo(int officeNo) {
		this.officeNo = officeNo;
	}

	public void setHostNo(int hostNo) {
		this.hostNo = hostNo;
	}

	public void setSpaceName(String spaceName) {
		SpaceName = spaceName;
	}

	public void setSpaceKind(int spaceKind) {
		this.spaceKind = spaceKind;
	}

	public void setSpacdAddress(String spacdAddress) {
		this.spacdAddress = spacdAddress;
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

	public void setDidHostOk(String didHostOk) {
		this.didHostOk = didHostOk;
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

	public void setMemberNo(int memberNo) {
		MemberNo = memberNo;
	}

	public void setReservePersonCount(int reservePersonCount) {
		this.reservePersonCount = reservePersonCount;
	}

	public void setReserveStatus(int reserveStatus) {
		this.reserveStatus = reserveStatus;
	}

	public void setStartDay(Date startDay) {
		this.startDay = startDay;
	}

	public void setEndDay(Date endDay) {
		this.endDay = endDay;
	}

	public void setReserveDate(Date reserveDate) {
		this.reserveDate = reserveDate;
	}

	public void setGuestId(String guestId) {
		this.guestId = guestId;
	}

	public void setGuestName(String guestName) {
		this.guestName = guestName;
	}

	public void setPayAmount(int payAmount) {
		this.payAmount = payAmount;
	}

	@Override
	public String toString() {
		return "PaymentRequest [reserveNo=" + reserveNo + ", guestNo=" + guestNo + ", spaceNo=" + spaceNo
				+ ", officeNo=" + officeNo + ", hostNo=" + hostNo + ", SpaceName=" + SpaceName + ", spaceKind="
				+ spaceKind + ", spacdAddress=" + spacdAddress + ", didDayReserve=" + didDayReserve + ", dayPayNumber="
				+ dayPayNumber + ", didMonthReserve=" + didMonthReserve + ", monthPay=" + monthPay + ", didHostOk="
				+ didHostOk + ", day=" + day + ", startTime=" + startTime + ", endTime=" + endTime + ", MemberNo="
				+ MemberNo + ", reservePersonCount=" + reservePersonCount + ", reserveStatus=" + reserveStatus
				+ ", startDay=" + startDay + ", endDay=" + endDay + ", reserveDate=" + reserveDate + ", guestId="
				+ guestId + ", guestName=" + guestName + ", payAmount=" + payAmount + "]";
	}
	
	
	
}
