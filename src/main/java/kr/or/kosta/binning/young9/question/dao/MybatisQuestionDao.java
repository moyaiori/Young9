package kr.or.kosta.binning.young9.question.dao;


import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.kosta.binning.young9.question.domain.Question;
import kr.or.kosta.binning.young9.study.domain.StudyGroup;
import kr.or.kosta.binning.young9.word.domain.Words;


/**
 * 문제 dao
 * @author AS
 */

@Repository("questionDao")
public class MybatisQuestionDao implements QuestionDao {

	@Autowired
	private SqlSessionFactory sqlSessionFactory;

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	// 문제 제출
	@Override
	public void add(Question question) throws RuntimeException {

	}
}
