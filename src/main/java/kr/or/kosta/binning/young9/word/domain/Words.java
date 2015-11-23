package kr.or.kosta.binning.young9.word.domain;

public class Words{
	private int wordId;
	private int studyGroupId;
	private String word;
	private String wordMeans;
	
	public Words(){}
	
	public Words(int wordId, int studyGroupId, String word, String wordMeans) {
		super();
		this.wordId = wordId;
		this.studyGroupId = studyGroupId;
		this.word = word;
		this.wordMeans = wordMeans;
	}
	public int getWordId() {
		return wordId;
	}
	public void setWordId(int wordId) {
		this.wordId = wordId;
	}
	public int getStudyGroupId() {
		return studyGroupId;
	}
	public void setStudyGroupId(int studyGroupId) {
		this.studyGroupId = studyGroupId;
	}
	public String getWord() {
		return word;
	}
	public void setWord(String word) {
		this.word = word;
	}
	public String getWordMeans() {
		return wordMeans;
	}
	public void setWordMeans(String wordMeans) {
		this.wordMeans = wordMeans;
	}
	@Override
	public String toString() {
		return "Words [wordId=" + wordId + ", studyGroupId=" + studyGroupId + ", word=" + word + ", wordMeans="
				+ wordMeans + "]";
	}
}
