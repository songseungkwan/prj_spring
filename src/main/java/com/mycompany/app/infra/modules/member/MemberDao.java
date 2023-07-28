package com.mycompany.app.infra.modules.member;

import java.util.List;


import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession; // 변수명 선언
	
	private static String namespace = "com.mycompany.app.infra.modules.member.MemberMapper";
	
//	paging
	public int selectOneCount(MemberVo vo){ return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	
	public List<Member> selectList(MemberVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo ); 
		// selectList : 반환값 list, vo=가변 가능성 현저히 낮음.
		}
	
	
	public Member selectOne(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo); }
	
	public Member selectXdm(MemberVo vo) { 
		Member member = sqlSession.selectOne(namespace + ".selectXdm", vo); 
		return member;
		// selectOne -> 반환값 : 해당 dto, dto= 가변 가능성 높음.
	}
	public Member selectUsr(MemberVo vo) { 
		Member member = sqlSession.selectOne(namespace + ".selectUsr", vo); 
		return member;
		// selectOne -> 반환값 : 해당 dto, dto= 가변 가능성 높음.
	}
	
	
	// selectList , selectOne과는 다르게 무조건 dto를 써야한다. vo 사용 불가능!!!
	public int update(Member dto) { return sqlSession.update(namespace + ".update", dto); }
	
	public int delete(Member dto) { return sqlSession.delete(namespace + ".delete", dto); }

	public int insert(Member dto) { return sqlSession.insert(namespace + ".insert", dto); }

	public int uelete(Member dto) { return sqlSession.update(namespace + ".uelete", dto); }

// sqlSession 객체를 쓴다 => mybatis 를 쓰겠다는 뜻
	// delete , insert , update , select - 반환값 int
	
	// 중복체크 
	public int selectOneCheckId(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectOneCheckId", vo);}
	
	
	// 파일업로드
	public int insertUploaded(Member dto) { return sqlSession.insert(namespace + ".insertUploaded", dto); }
	
	
	
}
