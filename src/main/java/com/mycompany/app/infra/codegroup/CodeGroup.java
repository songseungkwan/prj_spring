package com.mycompany.app.infra.codegroup;

public class CodeGroup {

	// DTO 작성법. (컬럼명과 동일해야한다.)
	
	// db 컬럼명 첫글자는 소문자. 
	// seq는 편의상 디비에는 int지만 자바에서는 String으로 쓴다.
	// 주로 테이블의 컬럼명과 일치
	
	private String seq;					
	private String name;
	private Integer  delNy;
	

	// -----
	public String getSeq() {
			return seq;
		}
		public void setSeq(String seq) {
			this.seq = seq;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public Integer getDelNy() {
			return delNy;
		}
		public void setDelNy(Integer delNy) {
			this.delNy = delNy;
		}


	
	
	
	
}