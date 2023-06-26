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
    <button type="submit" id="btnSearch">검색</button>
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
					<c:out value="${list.seq}"></c:out>
					<a href="admin?seq=<c:out value="${list.seq}"/>"><c:out value="${list.name}"></c:out></a>
				</c:forEach>
			</c:otherwise>
		</c:choose>	



<script type="text/javascript">



		 $("#btnSearch").on("click", function() {
		 	
		 	$("form[name=formList]").attr("method", "post"); 
		 	$("form[name=formList]").attr("action", "/formPage").submit();
		 });

		 	
		 	

			
	
 </script>
 






