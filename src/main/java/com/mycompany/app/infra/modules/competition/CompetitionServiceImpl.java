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
	public int selectOneCount(CompetitionVo vo) {return dao.selectOneCount(vo);	}
	
	public List<Competition> selectList(CompetitionVo vo) { return dao.selectList(vo); }
	
	@Override
	public Competition selectOne(CompetitionVo vo) { return dao.selectOne(vo); }
	
	@Override
	public int insert(Competition dto) throws Exception { 
		dao.insert(dto);	

		return 0; }
	@Override
	public int insertCompetition(Competition dto) {

		dao.insertCompetition(dto);	
		return 0;
	}
	

	
	@Override
	public int update(Competition dto){	 dao.update(dto);	return 0; }
	
	@Override
	public int delete(Competition dto) { dao.delete(dto);	return 0; }
	@Override
	public int uelete(Competition dto) { dao.uelete(dto);	return 0; }




	
	
}
