package kr.or.kosta.binning.young9.question.dao;

import kr.or.kosta.binning.young9.question.domain.Question;

/** 
 * 문제 관련 영속성 처리 규약 선언
 * @author AS
 */
public interface QuestionDao {
	
	/** 문제 제출 추가 */
	public void add(Question question) throws RuntimeException;
	
}
