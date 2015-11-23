package kr.or.kosta.binning.young9.article.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kosta.binning.young9.article.dao.ArticleDao;
import kr.or.kosta.binning.young9.article.domain.Article;

@Service("articleService")
public class ArticleServiceImpl implements ArticleService {
	
	@Autowired
	private ArticleDao articleDao;
	
	public ArticleDao getArticleDao() {
		return articleDao;
	}

	public void setArticleDao(ArticleDao articleDao) {
		this.articleDao = articleDao;
	}



	// 등록 메소드 구현
	@Override
	public void insert(Article article) throws RuntimeException {
		System.out.println("아티클 서비스 insert 진입");
		System.out.println("아티클" + article.toString());
		articleDao.insert(article);
	}

	@Override
	public List<Article> getAll(int boardId) throws RuntimeException{
		List<Article> list = null;
		System.out.println("아티클서비스 getALl 진입");
		list = articleDao.getAll(boardId);
		
		return list;
	}

	
	
}
