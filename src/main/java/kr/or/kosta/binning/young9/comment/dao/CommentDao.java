package kr.or.kosta.binning.young9.comment.dao;


import kr.or.kosta.binning.young9.comment.domain.Comment;

/** 
 * 댓글 관련 영속성 처리 규약 선언
 * @author AS
 */
public interface CommentDao {
	
	/** 게시글 등록 */
	public void insert(Comment comment) throws RuntimeException;
	
}
