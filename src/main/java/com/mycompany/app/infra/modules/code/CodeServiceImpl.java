package com.mycompany.app.infra.modules.code;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

	@Service
	public class CodeServiceImpl implements CodeService {

	@Autowired
	CodeDao dao;
	
//	paging
	@Override
	public int selectOneCount(CodeVo vo) {
		// TODO 
		return dao.selectOneCount(vo);
	}
	
// cache
	@PostConstruct	
	public void selectListCachedCodeArrayList() throws Exception {
		List<Code> codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
// codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList(				
	Code.cachedCodeArrayList.clear();
	Code.cachedCodeArrayList.addAll(codeListFromDb);
	System.out.println("cachedCodeArrayList:" + Code.cachedCodeArrayList.size() + "cached!") ;
	}
	
	
	// 지우는거
	public static void clear() throws Exception {
		Code.cachedCodeArrayList.clear();
	}
	
	
	// 코드를 리스트로 내뱉어주는거 ( 4개 중 가장 많이 쓰임)
	public static List<Code> selectListCachedCode(String codeGroup_seq) throws Exception {
		List<Code> rt = new ArrayList<Code>();
		for(Code codeRow : Code.cachedCodeArrayList) {
			if (codeRow.getCodeGroup_seq().equals(codeGroup_seq)) {
				rt.add(codeRow);
			} else {
				// by pass
			}
		}
		return rt;
	}

	
	public static String selectOneCachedCode(int code) throws Exception {
		String rt = "";
		for(Code codeRow : Code.cachedCodeArrayList) {
			if (codeRow.getSeq().equals(Integer.toString(code))) {
				rt = codeRow.getName();
			} else {
				// by pass
			}
		}
		return rt;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@Override
	public List<Code> selectList(CodeVo vo) { return dao.selectList(vo);	}

	@Override
	public Code selectOne(CodeVo vo) { return dao.selectOne(vo); }

	@Override
	public int update(Code dto) {
		return dao.update(dto);	
	}
	
	@Override
	public int delete(Code dto) {
		return dao.delete(dto);	
	}
	
	@Override
	public int insert(Code dto) {
		return dao.insert(dto);	
	}
	
	@Override
	public int uelete(Code dto) {
		return dao.uelete(dto);	
	}

}