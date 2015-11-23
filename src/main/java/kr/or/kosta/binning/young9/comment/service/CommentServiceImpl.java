package kr.or.kosta.binning.young9.comment.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kosta.binning.young9.comment.dao.CommentDao;
import kr.or.kosta.binning.young9.comment.domain.Comment;

@Service("commentService")
public class CommentServiceImpl implements CommentService {
	
	@Autowired
	private CommentDao commentDao;
	
	public CommentDao getCommentDao() {
		return commentDao;
	}

	public void setCommentDao(CommentDao commentDao) {
		this.commentDao = commentDao;
	}

	// 등록 메소드 구현
	@Override
	public void regist(Comment comment) throws RuntimeException {

	}
	
	// 수정 메소드 구현
	
	// 삭제 메소드 구현
}
