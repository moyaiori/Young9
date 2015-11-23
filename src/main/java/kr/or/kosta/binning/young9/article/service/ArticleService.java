package kr.or.kosta.binning.young9.article.service;


import java.util.List;

import kr.or.kosta.binning.young9.article.domain.Article;

public interface ArticleService {
	public void insert(Article article) throws RuntimeException;
	public List<Article> getAll(int boardId) throws RuntimeException;
}
