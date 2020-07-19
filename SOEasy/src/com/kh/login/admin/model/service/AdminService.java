package com.kh.login.admin.model.service;

import static com.kh.login.common.JDBCTemplate.close;
import static com.kh.login.common.JDBCTemplate.getConnection;

import java.sql.Connection;

import com.kh.login.admin.model.dao.AdminDao;
import com.kh.login.admin.model.vo.SoEasyPaymentException;
import com.kh.login.admin.model.vo.Synthesis;
import com.kh.login.member.model.dao.MemberDao;
import com.kh.login.space.model.dao.MainDao;
public class AdminService {

	public Synthesis getAllSynth() {
		Connection con = getConnection();
		Synthesis synth = null;
		
		int memberQty = new MemberDao().getListCount(con); 
		int spaceQty = new MainDao().getListCount(con);
		int imagesQty = new AdminDao().getImageCount(con);
		int hostQty = new AdminDao().getHostCount(con);
		int todayAcceptSpace = new AdminDao().getNewSpaceCount(con);
		int todayJoinMembers = new AdminDao().getNewMembersCount(con);  
		String stringBenefits = new AdminDao().getTodaysBenefit(con);
		int todaysBenefit = 1;
		if(stringBenefits != null) {
			todaysBenefit = Integer.parseInt(stringBenefits);
		}else {
			 try {
				throw new SoEasyPaymentException("결제 정보가  유효하지 않은 값 발생");
			} catch (SoEasyPaymentException e) {
				e.printStackTrace();
			}
		}
		int[] checkArr = new int[] {hostQty,todayAcceptSpace,todayJoinMembers,todaysBenefit};
		int errorCount = 0;
		for(int a : checkArr) {
			if(a < 0 ) {
				errorCount++;
			}
		}
		
		if(errorCount == 0) {
		synth = new Synthesis(memberQty, spaceQty, imagesQty, hostQty, todayAcceptSpace,
				todayJoinMembers, todaysBenefit);
		} 
		
		errorCount = 0;
		
		close(con);
		
		return synth;
	}

}
