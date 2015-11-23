package kr.or.kosta.binning.young9.member.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.kosta.binning.young9.member.domain.Member;


/**
 * 사용자관련 dao
 * @author AS
 */
@Repository("memberDao")
public class MybatisMemberDao implements MemberDao {
	
	Logger logger = Logger.getLogger(MybatisMemberDao.class);
	
	@Autowired
	private SqlSessionFactory sqlSessionFactory;

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public Member login(HashMap<String, Object> data) throws RuntimeException {
		Member member = null;
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			MemberDao dao = session.getMapper(MemberDao.class);
			member = dao.login(data);
		} catch (Exception e) {
			session.rollback();
		}finally {
			session.close();
		}
		return member;
	}

	@Override
	public void insert(Member member) throws RuntimeException {
		
		SqlSession session = null;

		try {
			session = sqlSessionFactory.openSession();
			MemberDao dao = session.getMapper(MemberDao.class);
			dao.insert(member);
			session.commit();
		} catch (Exception e) {
			session.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
	
	// 모임만들때 모임장의 스터디아이디 변경
	@Override
	public void updateStudyId(Member member) throws RuntimeException {
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			MemberDao dao = session.getMapper(MemberDao.class);
			dao.updateStudyId(member);
			session.commit();
		}catch (Exception e) {
			logger.warn("[WARN] MemberDao -> updateStudyId");
			logger.warn(e.toString());
			session.rollback();
		}finally{
			session.close();
		}
	}
	
	@Override
	public Member getMyInfo(String email) throws RuntimeException {
		Member member = null;
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			MemberDao dao = session.getMapper(MemberDao.class);
			member = dao.getMyInfo(email);
		} catch (Exception e) {
			session.rollback();
		}finally {
			session.close();
		}
		return member;
	}
	
	@Override
	public void exit(String nickname) throws RuntimeException {
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			MemberDao dao = session.getMapper(MemberDao.class);
			dao.exit(nickname);
			session.commit();
		}catch (Exception e) {
			logger.warn("[WARN] MemberDao -> exit()");
			logger.warn(e.toString());
			session.rollback();
		}finally{
			session.close();
		}
	}
	
	//----참조 ----- //


	@Override
	public List<Member> selectAll() throws RuntimeException {
		List<Member> list = null;
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			MemberDao dao = session.getMapper(MemberDao.class);
			list = dao.selectAll();
		}finally{
			session.close();
		}
		return list;
	}

	@Override
	public Member selectById(String id) throws RuntimeException {
		Member member = null;
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			MemberDao dao = session.getMapper(MemberDao.class);
			member = dao.selectById(id);
		}finally{
			session.close();
		}
		return member;
	}
	
	
}
