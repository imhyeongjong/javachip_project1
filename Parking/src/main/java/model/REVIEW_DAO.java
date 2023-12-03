package model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import database.SqlSessionManager;

public class REVIEW_DAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	SqlSession sqlSession = sqlSessionFactory.openSession(true);
	
	public REVIEW loginParking(REVIEW vo) {
		REVIEW loginParking = null;

		try {
			loginParking =  sqlSession.selectOne("database.REVIEW_mapper.loginParking",vo);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return loginParking;
	}
}
