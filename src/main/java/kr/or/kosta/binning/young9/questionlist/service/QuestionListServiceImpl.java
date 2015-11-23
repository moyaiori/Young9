package kr.or.kosta.binning.young9.questionlist.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kosta.binning.young9.questionlist.dao.QuestionListDao;
import kr.or.kosta.binning.young9.questionlist.domain.QuestionList;

@Service("questionListService")
public class QuestionListServiceImpl implements QuestionListService {
	
	@Autowired
	private QuestionListDao questionListDao;

	public QuestionListDao getQuestionListDao() {
		return questionListDao;
	}

	public void setQuestionListDao(QuestionListDao questionListDao) {
		this.questionListDao = questionListDao;
	}

	// 문제 제출 메소드 구현
	@Override
	public void add(QuestionList questionList) throws RuntimeException {

	}
}
