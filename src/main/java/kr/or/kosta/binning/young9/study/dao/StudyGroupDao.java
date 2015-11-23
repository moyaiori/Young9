package kr.or.kosta.binning.young9.study.dao;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.kosta.binning.young9.study.domain.GroupMember;
import kr.or.kosta.binning.young9.study.domain.StudyGroup;

/** 
 * 스터디그룹 관련 영속성 처리 규약 선언
 * @author AS
 */
public interface StudyGroupDao {
	
	/** 스터디그룹 추가 */
	public void insert(StudyGroup studyGroup) throws RuntimeException;
	
	/** 가장 최근 등록된 스터디 그룹 1개 가져오기 */
	public StudyGroup getRecent() throws RuntimeException;
	
	/** 스터디그룹 검색 */
	public List<StudyGroup> search(Map<String, Object> searchData) throws RuntimeException;
	
	/** 그룹에 아이들 추가하긔 */
	public void join(HashMap<String, Object> data) throws RuntimeException;
	
	/** 자신의 모임 가져오긔 */
	public StudyGroup getMyGroup(int studyGroupId) throws RuntimeException;
	
	/** 자신의 모임 멤버 가져오긔 */
	public List<GroupMember> getMyMember(int studyGroupId) throws RuntimeException;
	
	/** 모임탈퇴 처리 메소드 */
	public void exit(String email) throws RuntimeException;
	
	/** 강퇴 처리 메소드 */
	public void kick(String nickname) throws RuntimeException;
}
