package com.mycompany.app.infra.modules.competition;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mycompany.app.infra.modules.member.Member;
import com.mycompany.app.infra.modules.member.MemberVo;

@Repository
public class CompetitionDao {

	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession; // 변수명 선언
	
	private static String namespace = "com.mycompany.app.infra.modules.competition.CompetitionMapper";
	
//	paging
	public int selectOneCount(CompetitionVo vo){ return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	
	public List<Competition> selectList(CompetitionVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo ); 
		}
	
	public Competition selectOne(CompetitionVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo); }
	
	// selectList , selectOne과는 다르게 무조건 dto를 써야한다. vo 사용 불가능!!!
	public int update(Competition dto) { return sqlSession.update(namespace + ".update", dto); }
	public int updateVideo(Competition dto) { return sqlSession.insert(namespace + ".update", dto); }
	
	public int delete(Competition dto) { return sqlSession.delete(namespace + ".delete", dto); }
	public int deleteVideo(Competition dto) { return sqlSession.insert(namespace + ".delete", dto); }

	public int insert(Competition dto) { return sqlSession.insert(namespace + ".insert", dto); }
	public int insertVideo(Competition dto) { return sqlSession.insert(namespace + ".insert", dto); }

	public int uelete(Competition dto) { return sqlSession.update(namespace + ".uelete", dto); }
	public int ueleteVideo(Competition dto) { return sqlSession.insert(namespace + ".uelete", dto); }
	
	
	
	
	
}
