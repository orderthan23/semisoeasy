package com.kh.login.host.manageReserve.model.vo;

import java.sql.Date;

public class HostReserve {
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
	
	
	
}
