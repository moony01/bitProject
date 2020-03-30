package review.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import review.bean.ReviewDTO;
import review.bean.ZipcodeDTO;


public class ReviewDAO {
	private static ReviewDAO instance; // 인스턴스 생성
	private SqlSessionFactory sqlSessionFactory;
	
	public ReviewDAO() {
		try {
			Reader reader = Resources.getResourceAsReader("mybatis-config.xml");
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static ReviewDAO getInstance() { 
		if (instance == null) {
			synchronized (ReviewDAO.class) {
				instance = new ReviewDAO(); 
			}
		}
		return instance;
	}
	
	public ReviewDTO login(String id,String pwd) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String,String> map = new HashMap<String,String>();
		map.put("id", id);
		map.put("pwd", pwd);
		ReviewDTO reviewDTO = sqlSession.selectOne("reviewSQL.login", map);
		sqlSession.close();
		return reviewDTO;
	}

	public boolean isExistId(String id) {
		boolean exist = false;
		SqlSession sqlSession = sqlSessionFactory.openSession();
		ReviewDTO reviewDTO = sqlSession.selectOne("reviewSQL.isExistId", id);
		if(reviewDTO!=null) exist = true;
		sqlSession.close();
		return exist;
	}

	public List<ZipcodeDTO> getZipcodeList(String sido, String sigungu, String roadname) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("sido", sido);
		map.put("sigungu", sigungu);
		map.put("roadname", roadname);
		
		List<ZipcodeDTO> list = sqlSession.selectList("reviewSQL.getZipcodeList", map);
		sqlSession.close();		
		return list;
	}

	public int write(ReviewDTO reviewDTO) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int su = sqlSession.insert("reviewSQL.write", reviewDTO);
		sqlSession.commit();
		sqlSession.close();
		return su;
	}

}
