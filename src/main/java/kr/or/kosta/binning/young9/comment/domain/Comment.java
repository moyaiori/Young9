package kr.or.kosta.binning.young9.comment.domain;

public class Comment {
	private int comment_id;
	private int article_id;
	private String content;
	private String writer;
	private String regdate;
	
	public Comment(){}
	public Comment(int comment_id, int article_id, String content, String writer, String regdate) {
		super();
		this.comment_id = comment_id;
		this.article_id = article_id;
		this.content = content;
		this.writer = writer;
		this.regdate = regdate;
	}
	public int getComment_id() {
		return comment_id;
	}
	public void setComment_id(int comment_id) {
		this.comment_id = comment_id;
	}
	public int getArticle_id() {
		return article_id;
	}
	public void setArticle_id(int article_id) {
		this.article_id = article_id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "Comment [comment_id=" + comment_id + ", article_id=" + article_id + ", content=" + content + ", writer="
				+ writer + ", regdate=" + regdate + "]";
	}
}
