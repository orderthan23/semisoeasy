package com.kh.login.member.model.vo;

import java.sql.Date;

public class Member implements java.io.Serializable{

	private int memberNo;
	private int pType;
	private String mName;
	private String mId;
	private String mNick;
	private String mPassword;
	private String mPhone;
	private String mEmail;
	private Date enrollDate;
	
	public Member() {
		// TODO Auto-generated constructor stub
	}

	public Member(int memberNo, int pType, String mName, String mId, String mNick, String mPassword, String mPhone,
			String mEmail, Date enrollDate) {
		super();
		this.memberNo = memberNo;
		this.pType = pType;
		this.mName = mName;
		this.mId = mId;
		this.mNick = mNick;
		this.mPassword = mPassword;
		this.mPhone = mPhone;
		this.mEmail = mEmail;
		this.enrollDate = enrollDate;
	}

	@Override
	public String toString() {
		return "Member [memberNo=" + memberNo + ", pType=" + pType + ", mName=" + mName + ", mId=" + mId + ", mNick="
				+ mNick + ", mPassword=" + mPassword + ", mPhone=" + mPhone + ", mEmail=" + mEmail + ", enrollDate="
				+ enrollDate + "]";
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public int getpType() {
		return pType;
	}

	public void setpType(int pType) {
		this.pType = pType;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getmNick() {
		return mNick;
	}

	public void setmNick(String mNick) {
		this.mNick = mNick;
	}

	public String getmPassword() {
		return mPassword;
	}

	public void setmPassword(String mPassword) {
		this.mPassword = mPassword;
	}

	public String getmPhone() {
		return mPhone;
	}

	public void setmPhone(String mPhone) {
		this.mPhone = mPhone;
	}

	public String getmEmail() {
		return mEmail;
	}

	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	
	
	
}


