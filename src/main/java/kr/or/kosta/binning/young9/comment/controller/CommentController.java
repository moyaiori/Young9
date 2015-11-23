package kr.or.kosta.binning.young9.comment.controller;


import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.kosta.binning.young9.article.service.ArticleService;
import kr.or.kosta.binning.young9.comment.service.CommentService;

/** 댓글 관련 요청 처리 세부 컨트롤러 */
@Controller
@RequestMapping("/comment")
public class CommentController {
	
	Logger logger = Logger.getLogger(CommentController.class);
	
	@Autowired
	private CommentService commentService;

	

	public CommentService getCommentService() {
		return commentService;
	}

	public void setCommentService(CommentService commentService) {
		this.commentService = commentService;
	}

	@RequestMapping("/add")
	public String add(Model model){
		return "";
	}
}
