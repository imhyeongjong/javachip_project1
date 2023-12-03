package model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;



import database.SqlSessionManager;

public class PARKING_DAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	SqlSession sqlSession = sqlSessionFactory.openSession(true);

	public int joinParking(PARKING vo) {
		int cnt = 0;
		System.out.println(vo.toString());
		try {
			cnt = sqlSession.insert("database.PARKING_mapper.joinParking", vo);
		} catch (Exception e) {
			
		} finally {
			sqlSession.close();
		}
		return cnt;
	}
// 주차장 실시간 정보 등록
	public int updateParking(PARKING updateParking) {
		int cnt =0;
		try {
			cnt = sqlSession.update("database.PARKING_mapper.updateParking",updateParking);
		
		} catch (Exception e) {
			
		}finally {
			sqlSession.close();
		}
		return cnt;
	}

//	주차장명 입력 후 로그인(?)
	public PARKING loginParking(PARKING vo) {
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
	//
	public List<PARKING> allParking() {
		List<PARKING> allParking = null;
		try {
			allParking = sqlSession.selectList("database.PARKING_mapper.allParking");
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}return allParking;
	}
	
	public PARKING mapParking(PARKING vo) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		PARKING mapParking = null;
		try {
			mapParking = sqlSession.selectOne("database.PARKING_mapper.mapParking",vo);
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			sqlSession.close();
		}
		return mapParking;
	}
}
