package kr.or.kosta.binning.young9.word.dao;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.kosta.binning.young9.study.domain.StudyGroup;
import kr.or.kosta.binning.young9.word.domain.Words;


/**
 * 단어 dao
 * @author AS
 */

@Repository("wordsDao")
public class MybatisWordsDao implements WordsDao {
	
	Logger logger = Logger.getLogger(MybatisWordsDao.class);

	@Autowired
	private SqlSessionFactory sqlSessionFactory;

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	// 그룹에 단어 추가!
	@Override
	public void add(Words words) throws RuntimeException {
		SqlSession session = sqlSessionFactory.openSession();
		try{
			WordsDao wordsDao = session.getMapper(WordsDao.class);
			wordsDao.add(words);
			session.commit();
		}catch(Exception e){
			logger.warn("[WARN] : MybatisWordsDao -> add()메소드에서 발생");
			logger.debug(e.toString());
			session.rollback();
		}finally{
			session.close();
		}
	}
	
	// 오늘의 단어 추출
	@Override
	public void daily() throws RuntimeException {
		
	}
	
}
