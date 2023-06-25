package com.mycompany.app.code;

public class Code {

	// DTO 작성법. (컬럼명과 동일해야한다.)
	
	// db 컬럼명 첫글자는 소문자. 
	// seq는 편의상 디비에는 int지만 자바에서는 String으로 쓴다.
	// 주로 테이블의 컬럼명과 일치
	
	private String cdSeq;					
	private String cdName;
	private String codegroup_cgSeq;
// -----
	public String getCdSeq() {
		return cdSeq;
	}
	public void setCdSeq(String cdSeq) {
		this.cdSeq = cdSeq;
	}
	public String getCdName() {
		return cdName;
	}
	public void setCdName(String cdName) {
		this.cdName = cdName;
	}
	public String getCodegroup_cgSeq() {
		return codegroup_cgSeq;
	}
	public void setCodegroup_cgSeq(String codegroup_cgSeq) {
		this.codegroup_cgSeq = codegroup_cgSeq;
	}
	
	
	
	
}
