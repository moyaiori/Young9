package kr.or.kosta.binning.young9.article.domain;

public class Article {
	private int articleId;
	private int boardId;
	private int hitcount;
	private String email;
	private String writer;
	private String subject;
	private String content;
	private String regdate;
	
	public Article(){}
	public Article(int articleId, int boardId, int hitcount, String email, String writer, String subject,
			String content, String regdate) {
		super();
		this.articleId = articleId;
		this.boardId = boardId;
		this.hitcount = hitcount;
		this.email = email;
		this.writer = writer;
		this.subject = subject;
		this.content = content;
		this.regdate = regdate;
	}
	public int getArticleId() {
		return articleId;
	}
	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}
	public int getBoardId() {
		return boardId;
	}
	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}
	public int getHitcount() {
		return hitcount;
	}
	public void setHitcount(int hitcount) {
		this.hitcount = hitcount;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "Article [articleId=" + articleId + ", boardId=" + boardId + ", hitcount=" + hitcount + ", email="
				+ email + ", writer=" + writer + ", subject=" + subject + ", content=" + content + ", regdate="
				+ regdate + "]";
	}
}
