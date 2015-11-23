package kr.or.kosta.binning.young9.question.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kosta.binning.young9.question.dao.QuestionDao;
import kr.or.kosta.binning.young9.question.domain.Question;
import kr.or.kosta.binning.young9.study.dao.StudyGroupDao;
import kr.or.kosta.binning.young9.study.domain.StudyGroup;
import kr.or.kosta.binning.young9.word.dao.WordsDao;
import kr.or.kosta.binning.young9.word.domain.Words;

@Service("questionService")
public class QuestionServiceImpl implements QuestionService {
	
	@Autowired
	private QuestionDao questionDao;

	public QuestionDao getQuestionDao() {
		return questionDao;
	}

	public void setQuestionDao(QuestionDao questionDao) {
		this.questionDao = questionDao;
	}

	// 문제 제출 메소드 구현
	@Override
	public void add(Question question) throws RuntimeException {

	}
}
