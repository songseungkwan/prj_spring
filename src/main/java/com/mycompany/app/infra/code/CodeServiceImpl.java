package com.mycompany.app.infra.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService {

	
	@Autowired
	CodeDao dao;
	
	@Override
	public List<Code> selectList() { return dao.selectList();
		
	}

}



// dao.selectList() : 