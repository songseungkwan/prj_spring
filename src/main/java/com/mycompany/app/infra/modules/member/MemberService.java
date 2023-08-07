package com.mycompany.app.infra.modules.member;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface MemberService {

//	paging
	public int selectOneCount(MemberVo vo);	
	
	public List<Member> selectList(MemberVo vo);
	
	public Member selectOne(MemberVo vo);
	
	public Member selectXdm(MemberVo vo);
	public Member selectUsr(MemberVo vo);
	
	public int update(Member dto) throws Exception;
	public int delete(Member dto);
	public int insert(Member dto) throws Exception;	
	public int uelete(Member dto);


//	List<Member> selectListUploaded(MemberVo vo) throws Exception; 
//	public void uploadFiles(MultipartFile[] multipartFiles, Member dto, String tableName, int type, int maxNumber) throws Exception;
	
	public List<Member> selectUploaded(MemberVo vo);
	
}
