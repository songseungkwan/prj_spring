package com.mycompany.app.infra.modules.code;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycompany.app.common.util.UtilDateTime;
import com.mycompany.app.infra.modules.codegroup.CodeGroupVo;

@Controller
public class CodeController {

	@Autowired
	CodeServiceImpl service;
	
	@RequestMapping("/codeXdmList")
	public String codeXdmList(@ModelAttribute("vo") CodeVo vo , Model model) {
	
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows() > 0) {
			List<Code> list = service.selectList(vo);
			model.addAttribute("list", list);
//			model.addAttribute("vo", vo);
		} else {
//			by pass
		}
		
//		vo.setShKeyword(vo.getShKeyword()== null ? "" : vo.getShKeyword());
//		// 삼항연산자
//		
//		List<Code> list = service.selectList(vo);
//
//
////		왼쪽의 list는 jsp에서 사용할 변수명
//		model.addAttribute("list", list);
////		model.addAttribute("vo", vo); 

		return "/xdm/infra/code/codeXdmList";
	}

	@RequestMapping("/codeXdmForm")
	public String codeXdmForm(CodeVo vo, Model model) {

		Code code = service.selectOne(vo);

		model.addAttribute("item", code);

		return "xdm/infra/code/codeXdmForm";
	}
	
	@RequestMapping("/codeUpdt")
	public String codeUpdt(Code dto) {

		service.update(dto);
		


		return "redirect: /codeXdmList";
	}
	
	@RequestMapping("/codeDel")
	public String codeDel(Code dto) {

		service.delete(dto);
		
		return "redirect: /codeXdmList";
	}
	
	@RequestMapping("/codeAdd")
	public String codeAdd(Code dto) {

		service.insert(dto);
		
		return "redirect: /codeXdmList";
	}
	
	@RequestMapping("/codeUel")
	public String codeUel(Code dto) { 	

		service.uelete(dto);
		
		return "redirect: /codeXdmList";
	}
	
	
	
	
	@RequestMapping("excelDownloadCode")
    public void excelDownloadCode(CodeVo vo, HttpServletResponse httpServletResponse) throws Exception {
		
		setSearch(vo);
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Code> list = service.selectList(vo);
			
//			Workbook workbook = new HSSFWorkbook();	// for xls
	        Workbook workbook = new XSSFWorkbook();
	        Sheet sheet = workbook.createSheet("첫번째 시트");
	        CellStyle cellStyle = workbook.createCellStyle();        
	        Row row = null;
	        Cell cell = null;
	        int rowNum = 0;
			
//	        each column width setting
	        sheet.setColumnWidth(0, 2100);
	        sheet.setColumnWidth(1, 3100);

//	        Header
	        String[] tableHeader = {"코드 시퀀스", "코드 이름", "코드그룹 시퀀스", "delNy", "코드 번호", "운동", "맨몸운동", "기구운동", "유산소운동"};

	        row = sheet.createRow(rowNum++);
			for(int i=0; i<tableHeader.length; i++) {
				cell = row.createCell(i);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
				cell.setCellValue(tableHeader[i]);
			}

//	        Body
	        for (int i=0; i<list.size(); i++) {
	            row = sheet.createRow(rowNum++);
	            
//	            String type: null 전달 되어도 ok
//	            int, date type: null 시 오류 발생 하므로 null check
//	            String type 이지만 정수형 데이터가 전체인 seq 의 경우 캐스팅
	            
	            cell = row.createCell(0);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	            cell.setCellValue(Integer.parseInt(list.get(i).getCodeGroup_seq()));
	            
	            cell = row.createCell(1);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getName());
	        	
	            cell = row.createCell(2);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(Integer.parseInt(list.get(i).getSeq()));
	        	
	            cell = row.createCell(3);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getDelNy());
	            

	            

	            
	            cell = row.createCell(4);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getWorkout());	            
     
	            cell = row.createCell(5);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getCalisthenics());
	            
	            cell = row.createCell(6);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getFreeweight());
	        	
	            cell = row.createCell(7);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getAerobic());
	        	
//	            cell = row.createCell(4);
//	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
//	            cell.setCellStyle(cellStyle);
//	            cell.setCellValue(list.get(i).getGender());
	        	
//	            cell = row.createCell(4);
//	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
//	            cell.setCellStyle(cellStyle);
//	            cell.setCellValue(list.get(i).getCodeNum());
	        	
//	            cell = row.createCell(6);
//	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
//	            cell.setCellStyle(cellStyle);
//	            if(list.get(i).getWorkout() != null) cell.setCellValue(list.get(i).getWorkout() == 0 ? "N" : "Y");
	        	
//	            cell = row.createCell(7);
//	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
//	            cell.setCellStyle(cellStyle);
//	            if(list.get(i).getCalisthenics() != null) cell.setCellValue(list.get(i).getCalisthenics());
	            
//	            cell = row.createCell(8);
//	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
//	        	cell.setCellStyle(cellStyle);
//	        	if(list.get(i).getFreeweight() != null) cell.setCellValue(UtilDateTime.dateTimeToString(list.get(i).getFreeweight()));
//	        	
//	        	cell = row.createCell(9);
//	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
//	        	cell.setCellStyle(cellStyle);
//	        	if(list.get(i).getAerobic() != null) cell.setCellValue(UtilDateTime.dateTimeToString(list.get(i).getAerobic()));
	        }

	        httpServletResponse.setContentType("ms-vnd/excel");
//	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xlsx");

	        workbook.write(httpServletResponse.getOutputStream());
	        workbook.close();
		}
    }
	
	private void setSearch(CodeVo vo) {
		// TODO Auto-generated method stub
		
	}

	@ResponseBody
	@RequestMapping(value = "codeXdmInit")
	public Map<String, Object> codeXdmInit() throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		service.selectListCachedCodeArrayList();
		returnMap.put("rt", "success");
		return returnMap;
	}	






	
	
	
	
	
}






// Controller에서 쓰인 어노테이션
// 1. @Controller - 클라이언트의 요청을 처리하고, 필요한 비즈니스 로직이나 서비스 계층을 호출하여 데이터를 가져와 뷰(View)에 전달하거나, 
// 		다른 작업을 수행. 이후 클라이언트에게 응답을 생성하여 전달.
// 2. @AutoWired
// 3. @RequestMapping
