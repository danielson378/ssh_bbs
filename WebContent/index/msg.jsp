<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>提示信息</title>
<meta charset="utf-8"/>
<link href="css/style_1_common.css"rel="stylesheet" type="text/css">
<link href="css/style_1_forum_index.css" rel="stylesheet" type="text/css">
<link href="css/style_1_forum_forumdisplay.css" rel="stylesheet" type="text/css">
</head>
<body>

<jsp:include page="header.jsp"/>

	<div id="wp" class="wp">
		<div id="ct" class="wp cl w">
			<div class="nfl">
				<div class="f_c altw">
					<div id="messagetext" class="alert_right">
					 
						<p>${msg}</p>
						
						<p class="alert_btnleft">
							<a href="${reurl}">如果您的浏览器没有自动跳转，请点击此链接</a>
							<script type="text/javascript">setTimeout( "window.location.href ='${reurl}';", 1000);</script>
						</p>
						
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"/>

</body>
</html>