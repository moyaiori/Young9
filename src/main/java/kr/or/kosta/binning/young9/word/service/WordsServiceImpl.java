package kr.or.kosta.binning.young9.word.service;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kosta.binning.young9.word.dao.WordsDao;
import kr.or.kosta.binning.young9.word.domain.Words;

@Service("wordsService")
public class WordsServiceImpl implements WordsService {
	
	Logger logger = Logger.getLogger(WordsServiceImpl.class);
	
	@Autowired
	private WordsDao wordsDao;

	public WordsDao getWordsDao() {
		return wordsDao;
	}

	public void setWordsDao(WordsDao wordsDao) {
		this.wordsDao = wordsDao;
	}

	// 단어 등록 메소드 구현
	@Override
	public void add(Words words) throws RuntimeException {
		try{
			wordsDao.add(words);
		}catch(Exception e){
			logger.warn("[WARN] WordsServiceImpl -> add()메소드에서 발생"); 
			throw new RuntimeException(e.toString());
		}
	}
	
	// 오늘의 단어 추출 메소드 구현
	
}
