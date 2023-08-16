package com.mycompany.app.infra.modules.competition;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.app.infra.modules.member.Member;

@Service
public class CompetitionServiceImpl {

	
	@Autowired
	CompetitionDao dao;
	
//  paging
	@Override
	public int selectOneCount(CompetitionVo vo) {
		// TODO 
		return dao.selectOneCount(vo);
	}
	
	public List<Member> selectList(CompetitionVo vo) { return dao.selectList(vo); }
	
	@Override
	public Member selectOne(CompetitionVo vo) { return dao.selectOne(vo); }
	
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
	
	
	
}
