package com.mycompany.app.infra.code;

public class CodeVo {
	
	private String code;
	private Integer shOption;
	private String shKeyword;
	private String seq;
	private String codeGroup_seq;
	private Integer delNy;



	//	shOption
	public Integer getShOption() {
		return shOption;
	}
	public void setShOption(Integer shOption) {
		this.shOption = shOption;
	}
	
	//	shKeyword	
	public String getShKeyword() {
		return shKeyword;
	}
	public void setShKeyword(String shKeyword) {
		this.shKeyword = shKeyword;
	}
	
	//	seq
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}

	//	codeGroup_seq
	public String getCodeGroup_seq() {
		return codeGroup_seq; 
	} 
	
	public void setCodeGroup_seq(String codeGroup_seq) {
		this.codeGroup_seq = codeGroup_seq;
	}
	
	//	delNy
	public Integer getDelNy() {
		return delNy;
	}
	
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}
	
	//	code
	public String getCode() {
		return code;
	}
	
	public void setCode(String code) {
		this.code = code;
	}
	
}
