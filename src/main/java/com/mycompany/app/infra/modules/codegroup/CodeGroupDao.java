package com.mycompany.app.infra.modules.codegroup;

import java.util.List;


import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeGroupDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession; // 변수명 선언
	
	private static String namespace = "com.mycompany.app.infra.modules.codegroup.CodeGroupMapper";
	
//	paging
	public int selectOneCount(CodeGroupVo vo){ return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	
	public List<CodeGroup> selectList(CodeGroupVo vo) {return sqlSession.selectList(namespace + ".selectList", vo ); }
		// selectList : 반환값 list
	public CodeGroup selectOne(CodeGroupVo vo) {CodeGroup codeGroup = sqlSession.selectOne(namespace + ".selectOne", vo); return codeGroup;	}
		// selectOne -> 반환값 : 해당 dto

	// selectList , selectOne과는 다르게 무조건 dto를 써야한다. vo 사용 불가능!!!
	public int update(CodeGroup dto) { return sqlSession.update(namespace + ".update", dto); }
	
	public int delete(CodeGroup dto) { return sqlSession.delete(namespace + ".delete", dto); }

	public int insert(CodeGroup dto) { return sqlSession.insert(namespace + ".insert", dto); }

	public int uelete(CodeGroup dto) { return sqlSession.update(namespace + ".uelete", dto); }

// sqlSession 객체를 쓴다 => mybatis 를 쓰겠다는 뜻
	// delete , insert , update , select - 반환값 int


	

     
	
}