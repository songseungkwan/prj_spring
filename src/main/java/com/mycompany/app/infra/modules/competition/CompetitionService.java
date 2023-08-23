package com.mycompany.app.infra.modules.competition;

import java.util.List;

public interface CompetitionService {

	public List<Competition> selectList(CompetitionVo vo);
	public int selectOneCount(CompetitionVo vo);	
	public Competition selectOne(CompetitionVo vo);
	
	
	public int insert(Competition dto) throws Exception;
	public int insertCompetition(Competition dto);
	
	public int update(Competition dto);
	
	public int delete(Competition dto);
	
	public int uelete(Competition dto);





	





	
}
