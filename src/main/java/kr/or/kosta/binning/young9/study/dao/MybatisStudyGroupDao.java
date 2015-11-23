package kr.or.kosta.binning.young9.study.dao;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.kosta.binning.young9.study.controller.StudyGroupController;
import kr.or.kosta.binning.young9.study.domain.GroupMember;
import kr.or.kosta.binning.young9.study.domain.StudyGroup;

/**
 * 스터디그룹 dao
 * @author AS
 */

@Repository("studyGroupDao")
public class MybatisStudyGroupDao implements StudyGroupDao {
	
	Logger logger = Logger.getLogger(StudyGroupController.class);

	@Autowired
	private SqlSessionFactory sqlSessionFactory;

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	// 그룹 추가
	@Override
	public void insert(StudyGroup studyGroup) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			StudyGroupDao groupDao = sqlSession.getMapper(StudyGroupDao.class);
			groupDao.insert(studyGroup);
			sqlSession.commit();
		} catch (Exception e) {
			logger.warn("[WARN] : StudyGroupDao -> insert()에서 발생");
			sqlSession.rollback();
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
	}
	
	@Override
	public StudyGroup getRecent() throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		StudyGroup group = null;
		try {
			StudyGroupDao groupDao = sqlSession.getMapper(StudyGroupDao.class);
			group = groupDao.getRecent();
		} catch (Exception e) {
			logger.warn("[WARN] : StudyGroupDao -> getRecent()에서 발생");
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return group;
	}

	@Override
	public List<StudyGroup> search(Map<String, Object> searchData) throws RuntimeException {
		List<StudyGroup> list = null;
		SqlSession session = null;
		
		try{
			session = sqlSessionFactory.openSession();
			StudyGroupDao dao = session.getMapper(StudyGroupDao.class);
			list = dao.search(searchData);
		}finally{
			session.close();
		}
		return list;
	}
	
	@Override
	public void join(HashMap<String, Object> data) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			StudyGroupDao groupDao = sqlSession.getMapper(StudyGroupDao.class);
			groupDao.join(data);
			sqlSession.commit();
		} catch (Exception e) {
			logger.warn("[WARN] : StudyGroupDao -> join()에서 발생");
			sqlSession.rollback();
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
	}
	
	// 자신의 모임 가져오긔
	@Override
	public StudyGroup getMyGroup(int studyGroupId) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		StudyGroup group = null;
		try {
			StudyGroupDao groupDao = sqlSession.getMapper(StudyGroupDao.class);
			group = groupDao.getMyGroup(studyGroupId);
		} catch (Exception e) {
			logger.warn("[WARN] : StudyGroupDao -> getMyGroup()에서 발생");
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return group;
	}
	
	// 자신의 모임 맴버 가져오긔
	@Override
	public List<GroupMember> getMyMember(int studyGroupId) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<GroupMember> groupMember = null;
		try {
			StudyGroupDao groupDao = sqlSession.getMapper(StudyGroupDao.class);
			groupMember = groupDao.getMyMember(studyGroupId);
		} catch (Exception e) {
			logger.warn("[WARN] : StudyGroupDao -> getMyMember()에서 발생");
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return groupMember;
	}
	
}
