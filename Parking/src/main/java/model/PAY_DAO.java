package model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.json.simple.JSONArray;

import database.SqlSessionManager;

public class PAY_DAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession(true);
	
	// 페이에 결제 정보 저장(insert)
	public int insertPay(PAY vo) {
		int cnt = 0;
		try {
			cnt = sqlSession.insert("database.PAY_mapper.insertPay", vo);
			System.out.println("cnt");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;
	} 

}
