<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>版块列表</title>
<meta charset="utf-8"/>
<link rel="stylesheet" href="css/bootstrap.css"/> 
</head>
<body>
<div class="container">

	<%@include file="header.jsp" %>
	
	<br>
	
	<div>
		<a class="btn btn-warning" href="moduleAdd.action">添加版块</a>
	</div>
	
	<br>

	<table class="table table-bordered table-hover">

	<tr>
		<th width="10%">版块名称</th>
		<th width="10%">操作</th>
	</tr>
	
	<c:forEach var="module" items="${moduleList}">
         <tr>
         	<td><p>${module.name}</p></td>
			<td>
				<a class="btn btn-success" href="moduleEdit.action?module.id=${module.id}">修改</a>
				<a class="btn btn-danger" href="moduleDelete.action?module.id=${module.id}">删除</a>
			</td>
       	</tr>
     </c:forEach>
     
</table>

<br>${pageHtml}<br>

</div>
</body>
</html>