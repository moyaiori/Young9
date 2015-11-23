package kr.or.kosta.binning.young9.word.controller;


import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.kosta.binning.young9.article.service.ArticleService;
import kr.or.kosta.binning.young9.comment.service.CommentService;
import kr.or.kosta.binning.young9.study.service.StudyGroupService;
import kr.or.kosta.binning.young9.word.service.WordsService;

/** 스터디그룹 관련 요청 처리 세부 컨트롤러 */
@Controller
@RequestMapping("/word")
public class WordsController {
	 
	Logger logger = Logger.getLogger(WordsController.class);
	
	@Autowired
	private WordsService wordsService;

	public WordsService getWordsService() {
		return wordsService;
	}

	public void setWordsService(WordsService wordsService) {
		this.wordsService = wordsService;
	}

	// 오늘의 단어 추출
	@RequestMapping("/daily")
	public String daily(Model model){
		return "";
	}
	
	// 단어 등록
	@RequestMapping("/add")
	public String add(Model model){
		return "";
	}
}
