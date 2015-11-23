package kr.or.kosta.binning.young9.member.service;

import kr.or.kosta.binning.young9.member.domain.Member;

public interface MemberService {
	public Member login(String email, String passwd) throws RuntimeException;

	public void regist(Member member) throws RuntimeException;
	
	// 모임 만들 때 모임장의 스터디그룹 아이디 업데이트
	public void updateStudyId(Member member) throws RuntimeException;
	
	// 내정보 가져오긔
	public Member getMyInfo(String email) throws RuntimeException;
	
	// 모임 탈퇴라능
	public void exit(String nickname) throws RuntimeException;
}
