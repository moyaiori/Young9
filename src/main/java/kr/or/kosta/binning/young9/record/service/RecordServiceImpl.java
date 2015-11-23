package kr.or.kosta.binning.young9.record.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kosta.binning.young9.record.dao.RecordDao;

@Service("recordService")
public class RecordServiceImpl implements RecordService {
	
	@Autowired
	private RecordDao recordDao;

	public RecordDao getRecordDao() {
		return recordDao;
	}

	public void setRecordDao(RecordDao recordDao) {
		this.recordDao = recordDao;
	}
}
