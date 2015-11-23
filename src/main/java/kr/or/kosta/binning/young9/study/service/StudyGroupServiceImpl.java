package kr.or.kosta.binning.young9.study.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kosta.binning.young9.study.controller.StudyGroupController;
import kr.or.kosta.binning.young9.study.dao.StudyGroupDao;
import kr.or.kosta.binning.young9.study.domain.GroupMember;
import kr.or.kosta.binning.young9.study.domain.StudyGroup;

@Service("groupService")
public class StudyGroupServiceImpl implements StudyGroupService {
	
	Logger logger = Logger.getLogger(StudyGroupController.class);
	
	@Autowired
	private StudyGroupDao studyGroupDao;
	
	public StudyGroupDao getStudyGroupDao() {
		return studyGroupDao;
	}

	public void setStudyGroupDao(StudyGroupDao studyGroupDao) {
		this.studyGroupDao = studyGroupDao;
	}

	/** 스터디그룹 등록 메소드 구현 */
	@Override
	public void insert(StudyGroup studyGroup) throws RuntimeException {
		try {
			studyGroupDao.insert(studyGroup);
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	}
	
	/** 최근 등록된 모임 가져오기(단어 등록을 위해 사용한다) */
	@Override
	public StudyGroup getRecent() throws RuntimeException {
		StudyGroup group = null;
		try {
			group = studyGroupDao.getRecent();
		} catch (Exception e) {
			logger.warn("[WARN] Service에서 gerRecent()");
			throw new RuntimeException(e.toString());
		}
		return group;
	}

	@Override
	public List<StudyGroup> serach(Map<String, Object> searchData) throws RuntimeException {
		logger.debug("Study - serach");
		return studyGroupDao.search(searchData);
	}
	
	/** 모임 가입 메소드(모임장이 사용한다) */
	@Override
	public void join(HashMap<String, Object> data) throws RuntimeException {
		try {
			studyGroupDao.join(data);
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	}
	
	/** 내 그룹정보를 얻어 온다 */
	@Override
	public StudyGroup getMyGroup(int studyGroupId) throws RuntimeException {
		StudyGroup group = null;
		try {
			group = studyGroupDao.getMyGroup(studyGroupId);
		} catch (Exception e) {
			logger.warn("[WARN] Service에서 getMyGroup()");
			throw new RuntimeException(e.toString());
		}
		return group;
	}
	
	/** 내가 소속된 그룹의 맴버들을 모두 가져온다 */
	@Override
	public List<GroupMember> getMyMember(int studyGroupId) throws RuntimeException {
		List<GroupMember> groupMember = null;
		try {
			groupMember = studyGroupDao.getMyMember(studyGroupId);
		} catch (Exception e) {
			logger.warn("[WARN] Service에서 getMyGroup()");
			throw new RuntimeException(e.toString());
		}
		return groupMember;
	}
	
	/** 탈퇴 메소드 구현 */
	@Override
	public void exit(String email) throws RuntimeException {
		try {
			studyGroupDao.exit(email);
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	}
	
	@Override
	public void kick(String nickname) throws RuntimeException {
		try {
			studyGroupDao.kick(nickname);
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	}
}
