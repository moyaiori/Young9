package kr.or.kosta.binning.young9.member.dao;


import java.util.HashMap;
import java.util.List;

import kr.or.kosta.binning.young9.member.domain.Member;

/** 
 * 사용자 관련 영속성 처리 규약 선언
 * @author AS
 */
public interface MemberDao {
	
	/**로그인*/
	public Member login(HashMap<String, Object> data)  throws RuntimeException;
	
	/** 사용자 등록 */
	public void insert(Member member) throws RuntimeException;
	
	/** 전체 사용자 검색 */
	public List<Member> selectAll() throws RuntimeException;
	
	/** 아이디로 사용자 검색 */
	public Member selectById(String it) throws RuntimeException;
	
	/** 스터디 그룹 만들기 */
	public void updateStudyId(Member member) throws RuntimeException;
	
	/** 내정보 */
	public Member getMyInfo(String email) throws RuntimeException;
	
	/** 모임 탈퇴 */
	public void exit(String nickname) throws RuntimeException;
}
