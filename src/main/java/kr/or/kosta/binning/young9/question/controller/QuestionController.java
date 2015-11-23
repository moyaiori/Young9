package kr.or.kosta.binning.young9.question.controller;


import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.kosta.binning.young9.article.service.ArticleService;
import kr.or.kosta.binning.young9.comment.service.CommentService;
import kr.or.kosta.binning.young9.question.service.QuestionService;
import kr.or.kosta.binning.young9.study.service.StudyGroupService;
import kr.or.kosta.binning.young9.word.service.WordsService;

/** 스터디그룹 관련 요청 처리 세부 컨트롤러 */
@Controller
@RequestMapping("/question")
public class QuestionController {
	 
	Logger logger = Logger.getLogger(QuestionController.class);
	
	@Autowired
	private QuestionService questionService;

	public QuestionService getQuestionService() {
		return questionService;
	}

	public void setQuestionService(QuestionService questionService) {
		this.questionService = questionService;
	}

	// 문제 제출
	@RequestMapping("/add")
	public String add(Model model){
		return "";
	}
}
