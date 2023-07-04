package com.mycompany.app.infra.code;

import java.util.List;

public interface CodeService {

//	paging
	public int selectOneCount(CodeVo vo);
	
	public List<Code> selectList(CodeVo vo);
	public Code selectOne(CodeVo vo);

	
	public int update(Code dto);
	public int delete(Code dto);
	public int insert(Code dto);
	public int uelete(Code dto);



	
}
