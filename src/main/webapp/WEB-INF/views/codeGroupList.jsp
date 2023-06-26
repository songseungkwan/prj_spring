<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

 


codeGroupList.jsp


<form action="" method="post" name="formList">

	<select name="shOption" class="form-select form-select-sm" aria-label="form-select-sm example" style="width: 15%; display:inline-block;">
	  <option selected value="" >Open this select menu</option> 
	  <option value="1">One</option>
	  <option value="2">Two</option>
	  <option value="3">Three</option>
	</select>
	
    <input type="text" name="shKeyword" >
    <button type="submit" id="btn">검색</button>
</form>

<br>
<br>

<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data</td>
		</tr>
	</c:when>
	<c:otherwise>
		<c:forEach items="${list}" var="list" varStatus="status">
			<c:out value="${list.cgSeq}"></c:out>
			<a href="formPage?cgSeq=<c:out value="${list.cgSeq}"/>"><c:out value="${list.cgName}"/></a>
		</c:forEach>
	</c:otherwise>
</c:choose>	



<script type="text/javascript">



		 $("#btn").on("click", function() {
		/*  	자기 자신을 다시 한번 호출해준다.
		 	1. 링크 방식을 통해 파일을 설정
		 	2. 액션을 통해 자기 자신을 호출 */
		 	
		 	$("form[name='formList']").attr("method", "post"); 
		 	$("form[name='formList']").attr("action", "/formPage");
		 	

		 	
		 	
		/* 	alert ("dsadasd"");
			}); */
	
 </script>
 






