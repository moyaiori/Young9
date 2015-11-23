package kr.or.kosta.binning.young9.questionlist.controller;


import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.kosta.binning.young9.article.service.ArticleService;
import kr.or.kosta.binning.young9.comment.service.CommentService;
import kr.or.kosta.binning.young9.question.service.QuestionService;
import kr.or.kosta.binning.young9.questionlist.service.QuestionListService;
import kr.or.kosta.binning.young9.study.service.StudyGroupService;
import kr.or.kosta.binning.young9.word.service.WordsService;

/** 문제항목 관련 요청 처리 세부 컨트롤러 */
@Controller
@RequestMapping("/questionlist")
public class QuestionListController {
	 
	Logger logger = Logger.getLogger(QuestionListController.class);
	
	@Autowired
	private QuestionListService questionListService;

	public QuestionListService getQuestionListService() {
		return questionListService;
	}

	public void setQuestionListService(QuestionListService questionListService) {
		this.questionListService = questionListService;
	}

}
