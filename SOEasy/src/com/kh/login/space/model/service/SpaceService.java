package com.kh.login.space.model.service;

import static com.kh.login.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.login.space.model.dao.SpaceDao;
import com.kh.login.space.model.vo.Image;
import com.kh.login.space.model.vo.SpaceInfo;

public class SpaceService {

	public SpaceInfo insertSpaceStep1(ArrayList<Image> fileList, SpaceInfo si) {
		
		Connection con = getConnection();
		SpaceInfo returnSi = null;
		
		int spaceInfResult = 0;		//SPACE_INF 입력결과
		int kind1Result = 0;		//KIND: OFFICE 입력결과
		int necessary = 0;			//OFFICE의 필요한 update 횟수가 다르기 때문에 설정.
		int kind2Result = 0;		//KIND: COWORK 입력결과
		int convResult = 0;			//SPACE_CONV 입력결과
		int imgResult = 0;			//IMAGE 입력결과
		int sNo = -1;				//SPACE_NO 값은 음수일 수 없으므로 음수면 입력되지 않은 것으로 확인 가능
		
		//SPACE_INF 입력 메소드
		spaceInfResult = new SpaceDao().insertSpaceInfo(con, si);
		
		if(spaceInfResult > 0) {
			//SPACE_NO 조회용 메소드
			sNo = new SpaceDao().selectSNoCurrval(con);
			
			si.setSpaceNo(sNo);
			
			if(sNo > 0) {
				//SPACE_KIND에 따라 입력메소드 분리
				if(si.getSpaceKind() == 1) {
					necessary = si.getSpaceRoomCount();
					kind2Result = 1;	// insert 후 마지막 유효성검사에서 kind2Result값을 확인하기 때문에 변경해준다.
					for(int i = 0; i < si.getSpaceRoomCount(); i++) {
						String officeNo = si.getSpaceName() + (i + 1);
						
						kind1Result += new SpaceDao().insertOffice(con, si, officeNo);
					}
				} else if(si.getSpaceKind() == 2) {
					kind2Result = new SpaceDao().insertCowork(con, si);
				}
				
				//SPACE_CONV 입력메소드
				for(int i = 0; i < si.getConv().length; i ++) {
					//String conv[] 에 포함된 길이만큼 반복하면서 conv[i]와 일치하는 편의시설번호를 가져온다.
					String convNo = new SpaceDao().selectConvDetail(con, si.getConv()[i]);
					//convResult는 conv[]의 길이만큼 insert된 결과를 의미한다.
					convResult += new SpaceDao().insertSpaceConv(con, si.getSpaceNo(), convNo);
				}
				
				//이미지 파일에 공간번호 부여 및 IMAGE 입력 메소드
				for(int i = 0; i < fileList.size(); i++) {
					fileList.get(i).setSpaceNo(sNo);
//					System.out.println(fileList.size());
//					System.out.println("service img originname :" + fileList.get(i).getOriginName());
					imgResult += new SpaceDao().insertSpaceImg(con, fileList.get(i));
				}
			}
		}
		
		//위의 과정이 모두 정상적으로 처리됐다면 returnSi 조회
		if(spaceInfResult > 0 && sNo > 0 && convResult == si.getConv().length && kind1Result == necessary && kind2Result > 0 && imgResult == fileList.size()) {
			commit(con);
			returnSi = new SpaceDao().selectCurrentSpaceInfo(con, sNo);
		} else {
			rollback(con);
		}
		close(con);
		
		return returnSi;
	}
	
	public SpaceInfo insertSpaceStep2(SpaceInfo si) {
		
		Connection con = getConnection();
		SpaceInfo returnSi = null;
		
		int spaceInfOpResult = 0;
		int optimeResult = 0;
		int refundResult = 0;
		
		//SPACE_INF SPACE_POLICY, DID_DAY_RESERV, DAY_PAY, DID_MONTH_RESERV, MONTH_PAY 입력
		spaceInfOpResult = new SpaceDao().insertSpaceInfOp(con, si);

		int sNo = si.getSpaceNo();
		
		//SPACE_OPTIME 입력
		for(int i = 0; i < 7; i++) {
			int day = i;
			int startTime = si.getStartTimes()[i];
			int endTime = si.getEndTimes()[i];
			String openCheck = si.getOpenChecks()[i];
			
			optimeResult += new SpaceDao().insertSpaceOptime(con, sNo, day, startTime, endTime, openCheck);
		}
		
		//REFUND_POLICY 입력
		for(int i = 8; i >= 0; i--) {
			double rate = si.getSpaceRefundPolicy()[i];
			int date = i;
			
			refundResult += new SpaceDao().insertRefundPolicy(con, sNo, rate, date);
		}
		
		if(spaceInfOpResult > 0 && optimeResult == si.getOpenChecks().length && refundResult == si.getSpaceRefundPolicy().length) {
			commit(con);
			returnSi = new SpaceDao().selectCurrentSpaceInfo(con, sNo);
		} else {
			rollback(con);
		}
		close(con);
		
		return returnSi;
	}
	
	//정산정보 입력하기
	public int insertSpaceStep3(SpaceInfo si, Image licenseImage) {
		
		Connection con = getConnection();
		
		int hostInfResult = 0;
		int imgResult = 0;
		int result = 0;
		
		//HOST_INF 정산정보 입력
		hostInfResult = new SpaceDao().insertHostInf(con, si);
		
		//IMAGE 사업자등록증 이미지 입력
		//null처리
		if(licenseImage.getOriginName() == null || licenseImage.getOriginName() == "") {
			imgResult = 1;
		} else {
			imgResult = new SpaceDao().insertBusinessImg(con, licenseImage);
		}
		
		if(hostInfResult > 0 && imgResult > 0) {
			commit(con);
			result = 1;
		} else {
			rollback(con);
		}
		close(con);
		
		return result;
	}

}
