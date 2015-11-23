package kr.or.kosta.binning.young9.record.controller;


import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.kosta.binning.young9.record.service.RecordService;

/** 성적 관련 요청 처리 세부 컨트롤러 */
@Controller
@RequestMapping("/record")
public class RecordController {
	 
	Logger logger = Logger.getLogger(RecordController.class);
	
	@Autowired
	private RecordService recordService;

	public RecordService getRecordService() {
		return recordService;
	}

	public void setRecordService(RecordService recordService) {
		this.recordService = recordService;
	}

}
