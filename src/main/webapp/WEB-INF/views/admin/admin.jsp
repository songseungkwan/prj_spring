<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>




<input type="text" class="form-control" id="seq" placeholder="seq" required readonly value="<c:out value="${item.cgSeq}"/>">

<input type="text" class="form-control" id="name" placeholder="name" required value="<c:out value="${item.cgName}"/>">














