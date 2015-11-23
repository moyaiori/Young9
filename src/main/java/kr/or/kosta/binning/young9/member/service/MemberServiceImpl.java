package kr.or.kosta.binning.young9.member.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.kosta.binning.young9.member.dao.MemberDao;
import kr.or.kosta.binning.young9.member.domain.Member;

@Service("userService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDao memberDao;
	
	public MemberDao getMemberDao() {
		return memberDao;
	}

	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	
	@Override
	public Member login(String email, String passwd) throws RuntimeException {
		Member member = null;
		HashMap<String, Object> data = new HashMap<String, Object>();
		data.put("email", email);
		data.put("passwd", passwd);

		try {
			member = memberDao.login(data);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return member;
	}

	@Override
	public void regist(Member member) throws RuntimeException {
		try {
			memberDao.insert(member);
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	}
	
	// 모임만들기 -> 해당 회원의 스터디아이디 변경
	@Override
	public void updateStudyId(Member member) throws RuntimeException {
		try {
			memberDao.updateStudyId(member);
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	}
	
	@Override
	public Member getMyInfo(String email) throws RuntimeException {
		Member member = null;
		try {
			member = memberDao.getMyInfo(email);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return member;
	}
	
	@Override
	public void exit(String nickname) throws RuntimeException {
		
		
	}
}
