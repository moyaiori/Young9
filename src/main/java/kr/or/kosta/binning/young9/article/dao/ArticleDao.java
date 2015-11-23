package kr.or.kosta.binning.young9.article.dao;


import java.util.HashMap;
import java.util.List;

import kr.or.kosta.binning.young9.article.domain.Article;

/** 
 * 사용자 관련 영속성 처리 규약 선언
 * @author AS
 */
public interface ArticleDao {
	
	/** 게시글 등록 */
	public void insert(Article article) throws RuntimeException;

	/** 전체 리스트 출력 **/
	public List<Article> getAll(int boardId) throws RuntimeException;

}
