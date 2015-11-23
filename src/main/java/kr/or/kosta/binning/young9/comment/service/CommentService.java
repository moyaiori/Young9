package kr.or.kosta.binning.young9.comment.service;


import kr.or.kosta.binning.young9.comment.domain.Comment;

public interface CommentService {
	public void regist(Comment comment) throws RuntimeException;
}
