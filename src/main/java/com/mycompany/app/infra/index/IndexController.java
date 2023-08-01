package com.mycompany.app.infra.index;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.ResolverUtil.Test;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class IndexController {
	
	   @RequestMapping(value="/")
		public String biographyUsrView() {
		// 여기에서 서버단에 필요한 작업을 수행한다.
		   		
		// 아래의 jsp 파일 호출
		return "usr/infra/biography/biographyUsrView";
	   }

		
//		@RequestMapping(value="/xdmLoginForm")
//		public String xdmLoginForm() {
//			return "xdm/infra/member/xdmLoginForm";		
//		}
		
		@RequestMapping(value="/xdmRegisterForm")
		public String xdmRegisterForm() {
			return "xdm/infra/member/xdmRegisterForm";		
		}
		
		@RequestMapping(value="/indexUsrView")
		public String indexUsrView() {
			return "usr/infra/index/indexUsrView";		
		}

		@RequestMapping(value="/realTimeRecord")
		public String realTimeRecord() {
			return "usr/infra/subpage/realTimeRecord";	 
			
		}
		@RequestMapping(value="/registerVideo")
		public String registerVideo() {
			return "usr/infra/subpage/registerVideo";		
		}				
		@RequestMapping(value="/workoutType")
		public String workoutType() {
			return "usr/infra/subpage/workoutType";		
		}			
		
		
//		----------sub page

		
		
		
		
		
		
		
		
		
		
		
		
//		@RequestMapping(value="/pullups")
//		public String pullups() {
//			return "usr/infra/subpage/pullups";		
//		}
//
//		@RequestMapping(value="/pushups")
//		public String pushups() {
//			return "usr/infra/subpage/pushups";		
//		}
//		@RequestMapping(value="/situps")
//		public String situps() {
//			return "usr/infra/subpage/situps";		
//		}
//		
//		@RequestMapping(value="/planche")
//		public String planche() {
//			return "usr/infra/subpage/planche";		
//		}
//		
//		@RequestMapping(value="/burpee")
//		public String burpee() {
//			return "usr/infra/subpage/burpee";		
//		}
//		
//		@RequestMapping(value="/squat")
//		public String squat() {
//			return "usr/infra/subpage/squat";		
//		}
//		
//		@RequestMapping(value="/deadlift")
//		public String deadlift() {
//			return "usr/infra/subpage/deadlift";		
//		}
//		
//		@RequestMapping(value="/benchpress")
//		public String benchpress() {
//			return "usr/infra/subpage/benchpress";		
//		}
//		
//		@RequestMapping(value="/running")
//		public String running() {
//			return "usr/infra/subpage/running";		
//		}
//		
//		@RequestMapping(value="/bikes")
//		public String bikes() {
//			return "usr/infra/subpage/bikes";		
//		}
//		
//		@RequestMapping(value="/swimming")
//		public String swimming() {
//			return "usr/infra/subpage/swimming";		
//		}
		
		//----------usr login & register form
		@RequestMapping(value="/usrRegisterForm")
		public String usrRegisterForm() {
			return "usr/infra/member/usrRegisterForm";		
		}
		
		//----------indexXdmView
		@RequestMapping(value="/indexXdmView")
		public String indexXdmView() {
			return "xdm/infra/index/indexXdmView";		
		}
		
		
		
		
		@RequestMapping(value="/publicCorona1List")
		public String publicCorona1List() throws Exception {
			System.out.println("asdsadasdsa");

			  String apiUrl =
			  "http://apis.data.go.kr/1471000/CovidDagnsRgntProdExprtStusService/getMmCovidDagnsRgntExprtStusInq?serviceKey=N3m3VVDQdMg96%2BiH8%2FXVxwDWlnyDgUZDvOjHPlIxE44uqIkQGs%2FCA5csyUmgW6WaESxaN01IeU%2B%2BZkex3ZX%2FhA%3D%3D&numOfRows=3&pageNo=1&type=json";
		
			
			URL url = new URL(apiUrl);
			HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
			httpURLConnection.setRequestMethod("GET");
			
			BufferedReader bufferedReader;
			if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
				bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
			} else {
				bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
			}
			
			StringBuilder stringBuilder = new StringBuilder();
			String line;
			while((line = bufferedReader.readLine()) != null) {
				System.out.println("line: " + line);
				stringBuilder.append(line);
			}
			
			bufferedReader.close();
			httpURLConnection.disconnect();
			
			ObjectMapper objectMapper = new ObjectMapper();
		      
	        Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
	      
	        System.out.println("######## Map");
				for (String key : map.keySet()) {
					String value = String.valueOf(map.get(key));	// ok
					System.out.println("[key]:" + key + ", [value]:" + value);
			}
			
			
			Map<String, Object> header = new HashMap<String, Object>();
				header = (Map<String, Object>) map.get("header");
			
			System.out.println("######## Header");
				for (String key : header.keySet()) {
					String value = String.valueOf(header.get(key));	// ok
					System.out.println("[key]:" + key + ", [value]:" + value);
			}
			
				String aaa = (String) header.get("resultCode");
				
				System.out.println("header.get(\"resultCode\"): " + header.get("resultCode"));
				System.out.println("header.get(\"resultMsg\"): " + header.get("resultMsg"));
				
				
				Map<String, Object> body = new HashMap<String, Object>();
				body = (Map<String, Object>) map.get("body");
				
				List<Test> items = new ArrayList<Test>();
				items = (List<Test>) body.get("items");
				
				
				Map<String, Object> body = new HashMap<String, Object>();
				body = (Map<String, Object>) map.get("body");
				
				List<Home> items = new ArrayList<Home>();
				items = (List<Home>) body.get("items");
				
				System.out.println("items.size(): " + items.size());
				
//				for(Home item : items) {
//					System.out.println(item.getMM());
//				}
				
				model.addAllAttributes(header);
				model.addAllAttributes(body);
				
				
				
			
			return "/test/publicCorona1List";		
		}	
		
		
		
		
		
		
		
		
		
		


}
