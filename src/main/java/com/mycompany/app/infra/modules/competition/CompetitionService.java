package com.mycompany.app.infra.modules.competition;

import java.util.List;

public interface CompetitionService {

	
	public int selectOneCount(CompetitionVo vo);	
	
	public List<Competition> selectList(CompetitionVo vo);
	
	public Competition selectOne(CompetitionVo vo);
	
	public int update(Competition dto) throws Exception;
	public int delete(Competition dto);
	public int insert(Competition dto) throws Exception;	
	public int uelete(Competition dto);


	
}
