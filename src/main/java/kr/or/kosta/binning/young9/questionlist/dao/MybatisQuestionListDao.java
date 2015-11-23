package kr.or.kosta.binning.young9.questionlist.dao;


import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



/**
 * 문제항목 DAO
 * @author AS
 */

@Repository("questionListDao")
public class MybatisQuestionListDao implements QuestionListDao {

	@Autowired
	private SqlSessionFactory sqlSessionFactory;

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
}
