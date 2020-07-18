package com.kh.login.space.model.vo;

public class QnA implements java.io.Serializable {

	private int qNo;			//질문번호
	private int qMemNo;			//문의자번호
	private int rMemNo;			//답변자번호
	private String qEnrollDate;	//작성일자
	private String qContent;	//질문내용
	private String rContent;	//답변내용
	private String rEnrollDate;	//답변일자
	private int qKind;			//질문유형코드
	private int spaceNo;		//공간번호
	
	public QnA() {
		
	}
	
	public QnA(int qNo, int qMemNo, int rMemNo, String qEnrollDate, String qContent, String rContent,
			String rEnrollDate, int qKind, int spaceNo) {
		super();
		this.qNo = qNo;
		this.qMemNo = qMemNo;
		this.rMemNo = rMemNo;
		this.qEnrollDate = qEnrollDate;
		this.qContent = qContent;
		this.rContent = rContent;
		this.rEnrollDate = rEnrollDate;
		this.qKind = qKind;
		this.spaceNo = spaceNo;
	}

	public int getqNo() {
		return qNo;
	}

	public void setqNo(int qNo) {
		this.qNo = qNo;
	}

	public int getqMemNo() {
		return qMemNo;
	}

	public void setqMemNo(int qMemNo) {
		this.qMemNo = qMemNo;
	}

	public int getrMemNo() {
		return rMemNo;
	}

	public void setrMemNo(int rMemNo) {
		this.rMemNo = rMemNo;
	}

	public String getqEnrollDate() {
		return qEnrollDate;
	}

	public void setqEnrollDate(String qEnrollDate) {
		this.qEnrollDate = qEnrollDate;
	}

	public String getqContent() {
		return qContent;
	}

	public void setqContent(String qContent) {
		this.qContent = qContent;
	}

	public String getrContent() {
		return rContent;
	}

	public void setrContent(String rContent) {
		this.rContent = rContent;
	}

	public String getrEnrollDate() {
		return rEnrollDate;
	}

	public void setrEnrollDate(String rEnrollDate) {
		this.rEnrollDate = rEnrollDate;
	}

	public int getqKind() {
		return qKind;
	}

	public void setqKind(int qKind) {
		this.qKind = qKind;
	}

	public int getSpaceNo() {
		return spaceNo;
	}

	public void setSpaceNo(int spaceNo) {
		this.spaceNo = spaceNo;
	}

	@Override
	public String toString() {
		return "QnA [qNo=" + qNo + ", qMemNo=" + qMemNo + ", rMemNo=" + rMemNo + ", qEnrollDate=" + qEnrollDate
				+ ", qContent=" + qContent + ", rContent=" + rContent + ", rEnrollDate=" + rEnrollDate + ", qKind="
				+ qKind + ", spaceNo=" + spaceNo + "]";
	}
	
}
