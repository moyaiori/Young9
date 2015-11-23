package kr.or.kosta.binning.young9.word.service;

import kr.or.kosta.binning.young9.word.domain.Words;

public interface WordsService {
	
	// 그룹에 단어 추가
	public void add(Words words) throws RuntimeException;
	
	// 오늘의 단어 추출 추가
}
