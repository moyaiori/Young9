package kr.or.kosta.binning.young9.comment.dao;


import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.kosta.binning.young9.comment.domain.Comment;

/**
 * 댓글 dao
 * @author AS
 */
@Repository("commentDao")
public class MybatisCommentDao implements CommentDao {

	@Autowired
	private SqlSessionFactory sqlSessionFactory;

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	// 댓글 생성
	@Override
	public void insert(Comment comment) throws RuntimeException {

	}
	
	// 댓글 수정
	
	// 댓글 삭제
}
