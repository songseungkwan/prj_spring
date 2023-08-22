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
	public int update(Competition dto) throws Exception { 
		 dao.update(dto);
		return 0; }
	
	@Override
	public int delete(Competition dto) { 
		dao.delete(dto);
		return 0; }
	@Override
	public int uelete(Competition dto) { 
		dao.uelete(dto);
		return 0; }

	@Override
	public int insert(Competition dto) throws Exception { 
		
		dao.insert(dto);
		dao.insertVideo(dto);
		
		return 0; }





	
	
	
}
