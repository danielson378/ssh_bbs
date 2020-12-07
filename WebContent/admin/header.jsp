<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
</head>
<body>

	<br><br>

	<ul role="tablist" class="nav nav-tabs">
        <li <%if(request.getRequestURI().contains("index")){out.print("class='active'");}%> role="presentation">
        	<a href="">论坛后台</a>
        </li>
        <li <%if(request.getRequestURI().contains("user_")){out.print("class='active'");}%> role="presentation">
        	<a href="userList.action">用户管理</a>
        </li>
        <li <%if(request.getRequestURI().contains("module_")){out.print("class='active'");}%> role="presentation">
        	<a href="moduleList.action">版块管理</a>
        </li>
        <li <%if(request.getRequestURI().contains("topic_")){out.print("class='active'");}%> role="presentation">
        	<a href="topicList.action">话题管理</a>
        </li>
        <li <%if(request.getRequestURI().contains("post_")){out.print("class='active'");}%> role="presentation">
       		<a href="postList.action">帖子管理</a>
        </li>
        <li <%if(request.getRequestURI().contains("admin_")){out.print("class='active'");}%> role="presentation">
        	<a href="adminEdit.action">修改密码</a>
        </li>
        <li role="presentation">
        	<a href="login.jsp">注销</a>
        </li>
    </ul>

</body>
</html>