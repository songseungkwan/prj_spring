package com.mycompany.app.infra.modules.code;

import java.util.ArrayList;
import java.util.List;

public class Code {

	// DTO 작성법. (컬럼명과 동일해야한다.)
	
	// db 컬럼명 첫글자는 소문자. 
	// seq는 편의상 디비에는 int지만 자바에서는 String으로 쓴다.
	// 주로 테이블의 컬럼명과 일치
	
	private String seq;					
	private String name;
	private String codeGroup_seq;
	private Integer delNy;
	private Integer gender;
	private Integer codeNum;
	private Integer workout;
	private Integer calisthenics;
	private Integer freeweight;
	private Integer aerobic;
	
	// workout
	
	public Integer getWorkout() {
		return workout;
	}
	public void setWorkout(Integer workout) {
		this.workout = workout;
	}
	public Integer getCalisthenics() {
		return calisthenics;
	}
	public void setCalisthenics(Integer calisthenics) {
		this.calisthenics = calisthenics;
	}
	public Integer getFreeweight() {
		return freeweight;
	}
	public void setFreeweight(Integer freeweight) {
		this.freeweight = freeweight;
	}
	public Integer getAerobic() {
		return aerobic;
	}
	public void setAerobic(Integer aerobic) {
		this.aerobic = aerobic;
	}

	
// -----
	


	// for cache
	public static List<Code> cachedCodeArrayList = new ArrayList<Code>();
	
	

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

    public String getCodeGroup_seq() { return codeGroup_seq; } 
    public void setCodeGroup_seq(String codeGroup_seq) { this.codeGroup_seq = codeGroup_seq; }
	 
	public Integer getDelNy() {
		return delNy;
	}
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}
	public Integer getGender() {
		return gender;
	}
	public void setGender(Integer gender) {
		this.gender = gender;
	}
	public Integer getCodeNum() {
		return codeNum;
	}
	public void setCodeNum(Integer codeNum) {
		this.codeNum = codeNum;
	}
	


	
	
	// 주 클래스에서는 해당 테이블의 컬럼명을 변수 선언 후 getter/setter 메서드를 작성한다.
	// getter : 조회 / setter : 상태 변경
	
	
	
}
