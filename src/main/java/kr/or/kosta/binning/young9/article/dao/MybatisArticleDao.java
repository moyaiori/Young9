package kr.or.kosta.binning.young9.article.dao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.kosta.binning.young9.article.domain.Article;

/**
 * 게시글관련 dao
 * @author AS
 */
@Repository("articleDao")
public class MybatisArticleDao implements ArticleDao {

	@Autowired
	private SqlSessionFactory sqlSessionFactory;

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	@Override
	public void insert(Article article) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			ArticleDao dao = sqlSession.getMapper(ArticleDao.class);
			dao.insert(article);
			sqlSession.commit();
		} catch (Exception e) {
			sqlSession.rollback();
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
	}

	
	public List<Article> getAll(int boardId) throws RuntimeException {
		List<Article> articleList =null;
		SqlSession session = null;
		System.out.println("마이바티스 아티클 DAO");
		try{
			System.out.println("트라이문");
			System.out.println("보드아이디" + boardId);
			session = sqlSessionFactory.openSession();
			ArticleDao dao = (ArticleDao)session.getMapper(ArticleDao.class);
			articleList = dao.getAll(boardId);
			System.out.println("아티클사이즈"+articleList.size());

		}finally{
			session.close();
		}
		return articleList;
	}

	
	
	
}
