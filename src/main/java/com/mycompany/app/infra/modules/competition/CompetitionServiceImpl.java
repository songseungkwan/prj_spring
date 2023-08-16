package com.mycompany.app.infra.modules.competition;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CompetitionServiceImpl implements CompetitionService {

	
	@Autowired
	CompetitionDao dao;
	
//  paging
	@Override
	public int selectOneCount(CompetitionVo vo) {
		// TODO 
		return dao.selectOneCount(vo);
	}
	
	public List<Competition> selectList(CompetitionVo vo) { return dao.selectList(vo); }
	
	@Override
	public Competition selectOne(CompetitionVo vo) { return dao.selectOne(vo); }
	
	@Override
	public int update(Competition dto) throws Exception {
		
		return dao.update(dto);	
	}
	
	@Override
	public int delete(Competition dto) {
		return dao.delete(dto);	
	}
	@Override
	public int uelete(Competition dto) {
		return dao.uelete(dto);	
	}

	@Override
	public int insert(Competition dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.insert(dto);	
	}
	
	
	
}
