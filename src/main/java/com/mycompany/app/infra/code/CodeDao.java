package com.mycompany.app.infra.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mycompany.app.infra.codegroup.CodeGroupVo;

	@Repository
	public class CodeDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession; // 변수명 선언
	
	private static String namespace = "com.mycompany.app.infra.code.CodeMapper";
	
//	paging
	public int selectOneCount(CodeVo vo){ return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	
	public List<Code> selectList(CodeVo vo){ 
		return sqlSession.selectList(namespace + ".selectList", vo); 
		// selectList : 반환값 list
		}
	
	public Code selectOne(CodeVo vo) { 
		Code code = sqlSession.selectOne(namespace + ".selectOne", vo); 
				
		return code;
		// selectOne -> 반환값 : 해당 dto
	}
	
	// selectList , selectOne과는 다르게 무조건 dto를 써야한다. vo 사용 불가능!!!
	public int update(Code dto) { return sqlSession.update(namespace + ".update", dto); }
	
	public int delete(Code dto) { return sqlSession.delete(namespace + ".delete", dto); }

	public int insert(Code dto) { return sqlSession.insert(namespace + ".insert", dto); }

	public int uelete(Code dto) { return sqlSession.update(namespace + ".uelete", dto); }

// sqlSession 객체를 쓴다 => mybatis 를 쓰겠다는 뜻
	// delete , insert , update , select - 반환값 int




  

     
	
}
