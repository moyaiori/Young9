package kr.or.kosta.binning.young9.word.dao;

import kr.or.kosta.binning.young9.word.domain.Words;

/** 
 * 스터디그룹 관련 영속성 처리 규약 선언
 * @author AS
 */
public interface WordsDao {
	
	/** 단어 추가 */
	public void add(Words words) throws RuntimeException;
	
	/** 오늘의 단어 추출 */
	public void daily() throws RuntimeException;
	
}
