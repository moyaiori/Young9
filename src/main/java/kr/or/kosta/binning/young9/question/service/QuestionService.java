package kr.or.kosta.binning.young9.question.service;

import kr.or.kosta.binning.young9.question.domain.Question;

public interface QuestionService {
	// 문제 제출
	public void add(Question question) throws RuntimeException;
}
