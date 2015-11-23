package kr.or.kosta.binning.young9.questionlist.service;

import kr.or.kosta.binning.young9.questionlist.domain.QuestionList;

public interface QuestionListService {
	// 문제 제출
	public void add(QuestionList questionList) throws RuntimeException;
}
