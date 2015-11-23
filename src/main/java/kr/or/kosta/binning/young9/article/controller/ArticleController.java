package kr.or.kosta.binning.young9.article.controller;


import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.kosta.binning.young9.article.dao.ArticleDao;
import kr.or.kosta.binning.young9.article.domain.Article;
import kr.or.kosta.binning.young9.article.service.ArticleService;
import kr.or.kosta.binning.young9.common.web.utility.Pagination;

/** 사용자 관련 요청 처리 세부 컨트롤러 */
@Controller
@RequestMapping("/article")
public class ArticleController {
	
	Logger logger = Logger.getLogger(ArticleController.class);
	Article article;
	
	@Autowired
	private ArticleService articleService;

	public ArticleService getArticleService() {
		return articleService;
	}

	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}
	/* 리스트 출력 */
	@RequestMapping("/noticelist")
	public String list(Model model){
	
		System.out.println("컨트롤러 = 리스트");
		List<Article> list = articleService.getAll(1);
		model.addAttribute("list", list);
		model.addAttribute("contentFile", "../notice/list.jsp");
		return "template/template";
	}
	
	/*
	@RequestMapping("/noticelist")
	public String list(Model model){
		model.addAttribute("contentFile", "../notice/list.jsp");
		return "template/template";
	}
	*/
	@RequestMapping("/noticewrite")
	public String write(Model model){
		model.addAttribute("contentFile", "../notice/write.jsp");
		return "template/template";
	}
	
	@RequestMapping(value="/insert", method=RequestMethod.POST)
	public String insert(Model model, @ModelAttribute("subject") String subject, @ModelAttribute("content") String content){
		article = new Article();
		article.setEmail("admin@kosta.co.kr");
		article.setWriter("admin");
		article.setContent(content);
		article.setSubject(subject);
		articleService.insert(article);
		
		model.addAttribute("contentFile", "../notice/list.jsp");
		return "template/template";
	}
	
	
	
}
