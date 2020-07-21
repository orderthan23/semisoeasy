package com.kh.login.board.model.vo;

import java.util.Date;

public class Qna implements java.io.Serializable{
		private int qno; // 질문번호
		private int qmember; // 질문자 번호
		private int rmember; // 답변자 번호
		private Date qdate; //질문 날짜
		private String qcontent; //질문내용
		private String rcontent; //답변내용
		private Date rdate; //답변날짜
		private int qkind; // 질문종류
		
		public Qna() {}

		public Qna(int qno, int qmember, int rmember, Date qdate, String qcontent, String rcontent, Date rdate,
				int qkind) {
			super();
			this.qno = qno;
			this.qmember = qmember;
			this.rmember = rmember;
			this.qdate = qdate;
			this.qcontent = qcontent;
			this.rcontent = rcontent;
			this.rdate = rdate;
			this.qkind = qkind;
		}

		public int getQno() {
			return qno;
		}

		public void setQno(int qno) {
			this.qno = qno;
		}

		public int getQmember() {
			return qmember;
		}

		public void setQmember(int qmember) {
			this.qmember = qmember;
		}

		public int getRmember() {
			return rmember;
		}

		public void setRmember(int rmember) {
			this.rmember = rmember;
		}

		public Date getQdate() {
			return qdate;
		}

		public void setQdate(Date qdate) {
			this.qdate = qdate;
		}

		public String getQcontent() {
			return qcontent;
		}

		public void setQcontent(String qcontent) {
			this.qcontent = qcontent;
		}

		public String getRcontent() {
			return rcontent;
		}

		public void setRcontent(String rcontent) {
			this.rcontent = rcontent;
		}

		public Date getRdate() {
			return rdate;
		}

		public void setRdate(Date rdate) {
			this.rdate = rdate;
		}

		public int getQkind() {
			return qkind;
		}

		public void setQkind(int qkind) {
			this.qkind = qkind;
		}

		@Override
		public String toString() {
			return "Qna [qno=" + qno + ", qmember=" + qmember + ", rmember=" + rmember + ", qdate=" + qdate
					+ ", qcontent=" + qcontent + ", rcontent=" + rcontent + ", rdate=" + rdate + ", qkind=" + qkind
					+ "]";
		}
		
}
 