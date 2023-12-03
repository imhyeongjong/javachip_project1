package model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import database.SqlSessionManager;

public class BOOKING_DAO {
	
	//세션을 생성해 줄 수 있는 Factory 생성
		static SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
			
		//connection, close, sql문 실행...
		 
		
		// 주차장 정보 insert
		public int joinBooking(BOOKING vo) {
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			int cnt = 0;
			
			try {
				cnt = sqlSession.insert("database.BOOKING_mapper.joinBooking", vo);
				System.out.println("cnt");
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				sqlSession.close();
			}

			return cnt;
		}
		//주차장 명 입력 후 예약하기위한 주차장명 데이터 가져오기(로그인)
		public PARKING loginParking(PARKING vo) {
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			PARKING loginParking = null;
			try {
				loginParking =  sqlSession.selectOne("database.PARKING_mapper.loginParking",vo);
			} catch (Exception e) {
				// TODO: handle exception
			}finally {
				sqlSession.close();
			}
			return loginParking;
		}
		//주차장 명 입력 후 예약 내역 가져오기 
		public static List<BOOKING> loginBooking(String ID) {
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			List<BOOKING> loginBooking = null;
			try {
				loginBooking = sqlSession.selectList("database.BOOKING_mapper.loginBooking",ID);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			return loginBooking;
		}
		
}
