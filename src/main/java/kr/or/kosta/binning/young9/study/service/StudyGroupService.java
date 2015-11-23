package kr.or.kosta.binning.young9.study.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.kosta.binning.young9.study.domain.GroupMember;
import kr.or.kosta.binning.young9.study.domain.StudyGroup;

public interface StudyGroupService {
	
	/** 모임 만들긔 */
	public void insert(StudyGroup studyGroup) throws RuntimeException;
	 
	/** 최근아이 가져오긔 */
	public StudyGroup getRecent() throws RuntimeException;
	
	/** 모임 검색 */
	public List<StudyGroup> serach(Map<String, Object> searchData) throws RuntimeException;
	
	/** 모입에 가입하긔 */
	public void join(HashMap<String, Object> data) throws RuntimeException;
	
	/** 자신의 모임 가져오긔 */
	public StudyGroup getMyGroup(int studyGroupId) throws RuntimeException;
	
	/** 자신의 모임 멤버 가져오긔 */
	public List<GroupMember> getMyMember(int studyGroupId) throws RuntimeException;
	
	/** 모임 탈퇴 메소드 */
	public void exit(String email) throws RuntimeException;
	
	/** 모임 강퇴 메소드 */
	public void kick(String nickname) throws RuntimeException;
}
