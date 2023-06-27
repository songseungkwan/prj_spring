<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<form name="form" method="post">
 
    <input type="text" id="seq" name="seq" readonly value="<c:out value="${item.seq}"/>">
                    			
    <input type="text" id="name" name="name" value="<c:out value="${item.name}"/>">
    
    <input type="text" class="form-control" id="delNy" name="delNy" required value="<c:out value="${item.delNy}"/>">
			


    		<button id="btnSave" type="submit">save</button>
    		<button id="btnAdd" type="submit">insert</button>
    		<button id="btnDel" type="submit">delete</button>    	
    		<button id="btnUel" type="submit">uelete</button>   
</form>



<%-- <form action="" method="post" name="formList">

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
		</c:choose>	 --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script>
$("#btnSave").on("click", function(){
	
	$("form[name=form]").attr("action","/codeGroupUpdt").submit();
	
});

$("#btnDel").on("click", function(){
	alert()
	$("form[name=form]").attr("action","/codeGroupDel").submit();
	
});

$("#btnAdd").on("click", function(){
	
	$("form[name=form]").attr("action","/codeGroupAdd").submit();
	
});

$("#btnUel").on("click", function(){
	
	$("form[name=form]").attr("action","/codeGroupUel").submit();
	
});

</script>








