package com.kh.login.space.model.vo;

import java.sql.Date;
import java.util.Arrays;

public class SpaceInfo implements java.io.Serializable {
	
	private int spaceNo;					//공간번호
	private int hostNo;						//호스트번호
	private String spaceName;				//공간명
	private int spaceKind;					//공간종류 독립오피스/코워킹스페이스
	private String spaceAddress;			//공간주소
	private String sStatus;					//공간 소개글 공개여부
	private String spaceIntro;				//공간소개글
	private String spacePayPolicy;			//가격정책
	private String didDayReserv;			//일별 예약 가능 여부
	private int dayPay;						//일당 금액
	private String didMonthReserv;			//월별 예약 가능 여부
	private int monthPay;					//월당 금액
	private String spaceLocationFilter;		//공간 위치 필터
	private String[] conv;					//편의시설 배열
	//독립오피스의 경우
	private double spaceSize;				//공간사이즈
	private int spaceRoomCount;				//공간재고
	private int spaceContainCount;			//수용인원
	//코워킹스페이스의 경우
	private int unfixSeat;					//자유석 갯수
	private int fixSeat;					//지정석 갯수
	private int totalSeat;					//총 좌석 수
	private int maxReserv;					//예약 가능 인원

	public SpaceInfo() {}

	public SpaceInfo(int spaceNo, int hostNo, String spaceName, int spaceKind, String spaceAddress, String sStatus,
			String spaceIntro, String spacePayPolicy, String didDayReserv, int dayPay, String didMonthReserv,
			int monthPay, String spaceLocationFilter, String[] conv, double spaceSize, int spaceRoomCount,
			int spaceContainCount, int unfixSeat, int fixSeat, int totalSeat, int maxReserv) {
		super();
		this.spaceNo = spaceNo;
		this.hostNo = hostNo;
		this.spaceName = spaceName;
		this.spaceKind = spaceKind;
		this.spaceAddress = spaceAddress;
		this.sStatus = sStatus;
		this.spaceIntro = spaceIntro;
		this.spacePayPolicy = spacePayPolicy;
		this.didDayReserv = didDayReserv;
		this.dayPay = dayPay;
		this.didMonthReserv = didMonthReserv;
		this.monthPay = monthPay;
		this.spaceLocationFilter = spaceLocationFilter;
		this.conv = conv;
		this.spaceSize = spaceSize;
		this.spaceRoomCount = spaceRoomCount;
		this.spaceContainCount = spaceContainCount;
		this.unfixSeat = unfixSeat;
		this.fixSeat = fixSeat;
		this.totalSeat = totalSeat;
		this.maxReserv = maxReserv;
	}

	public int getSpaceNo() {
		return spaceNo;
	}

	public void setSpaceNo(int spaceNo) {
		this.spaceNo = spaceNo;
	}

	public int getHostNo() {
		return hostNo;
	}

	public void setHostNo(int hostNo) {
		this.hostNo = hostNo;
	}

	public String getSpaceName() {
		return spaceName;
	}

	public void setSpaceName(String spaceName) {
		this.spaceName = spaceName;
	}

	public int getSpaceKind() {
		return spaceKind;
	}

	public void setSpaceKind(int spaceKind) {
		this.spaceKind = spaceKind;
	}

	public String getSpaceAddress() {
		return spaceAddress;
	}

	public void setSpaceAddress(String spaceAddress) {
		this.spaceAddress = spaceAddress;
	}

	public String getsStatus() {
		return sStatus;
	}

	public void setsStatus(String sStatus) {
		this.sStatus = sStatus;
	}

	public String getSpaceIntro() {
		return spaceIntro;
	}

	public void setSpaceIntro(String spaceIntro) {
		this.spaceIntro = spaceIntro;
	}

	public String getSpacePayPolicy() {
		return spacePayPolicy;
	}

	public void setSpacePayPolicy(String spacePayPolicy) {
		this.spacePayPolicy = spacePayPolicy;
	}

	public String getDidDayReserv() {
		return didDayReserv;
	}

	public void setDidDayReserv(String didDayReserv) {
		this.didDayReserv = didDayReserv;
	}

	public int getDayPay() {
		return dayPay;
	}

	public void setDayPay(int dayPay) {
		this.dayPay = dayPay;
	}

	public String getDidMonthReserv() {
		return didMonthReserv;
	}

	public void setDidMonthReserv(String didMonthReserv) {
		this.didMonthReserv = didMonthReserv;
	}

	public int getMonthPay() {
		return monthPay;
	}

	public void setMonthPay(int monthPay) {
		this.monthPay = monthPay;
	}

	public String getSpaceLocationFilter() {
		return spaceLocationFilter;
	}

	public void setSpaceLocationFilter(String spaceLocationFilter) {
		this.spaceLocationFilter = spaceLocationFilter;
	}

	public String[] getConv() {
		return conv;
	}

	public void setConv(String[] conv) {
		this.conv = conv;
	}

	public double getSpaceSize() {
		return spaceSize;
	}

	public void setSpaceSize(double spaceSize) {
		this.spaceSize = spaceSize;
	}

	public int getSpaceRoomCount() {
		return spaceRoomCount;
	}

	public void setSpaceRoomCount(int spaceRoomCount) {
		this.spaceRoomCount = spaceRoomCount;
	}

	public int getSpaceContainCount() {
		return spaceContainCount;
	}

	public void setSpaceContainCount(int spaceContainCount) {
		this.spaceContainCount = spaceContainCount;
	}

	public int getUnfixSeat() {
		return unfixSeat;
	}

	public void setUnfixSeat(int unfixSeat) {
		this.unfixSeat = unfixSeat;
	}

	public int getFixSeat() {
		return fixSeat;
	}

	public void setFixSeat(int fixSeat) {
		this.fixSeat = fixSeat;
	}

	public int getTotalSeat() {
		return totalSeat;
	}

	public void setTotalSeat(int totalSeat) {
		this.totalSeat = totalSeat;
	}

	public int getMaxReserv() {
		return maxReserv;
	}

	public void setMaxReserv(int maxReserv) {
		this.maxReserv = maxReserv;
	}

	@Override
	public String toString() {
		return "SpaceInfo [spaceNo=" + spaceNo + ", hostNo=" + hostNo + ", spaceName=" + spaceName + ", spaceKind="
				+ spaceKind + ", spaceAddress=" + spaceAddress + ", sStatus=" + sStatus + ", spaceIntro=" + spaceIntro
				+ ", spacePayPolicy=" + spacePayPolicy + ", didDayReserv=" + didDayReserv + ", dayPay=" + dayPay
				+ ", didMonthReserv=" + didMonthReserv + ", monthPay=" + monthPay + ", spaceLocationFilter="
				+ spaceLocationFilter + ", conv=" + Arrays.toString(conv) + ", spaceSize=" + spaceSize
				+ ", spaceRoomCount=" + spaceRoomCount + ", spaceContainCount=" + spaceContainCount + ", unfixSeat="
				+ unfixSeat + ", fixSeat=" + fixSeat + ", totalSeat=" + totalSeat + ", maxReserv=" + maxReserv + "]";
	}

}
