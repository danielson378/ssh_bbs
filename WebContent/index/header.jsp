<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
</head>
<body>

	<div id="hd">
		<div class="wp">
			<div class="hdc cl">
				<h2><a href="index.action"><img src="images/logo.png" alt="LOGO" border="0"/></a></h2>
				
				<c:if test="${sessionScope.user==null}">
					<div class="fastlg cl">
						<div class="y pns">
							<table>
								<tr><td>&nbsp;</td></tr>
								<tr>
									<td>
										<a href="login.jsp"><button class="pn vm" style="width: 75px;">用户登录</button></a>
										<a href="register.jsp"><button class="pn vm" style="width: 75px;">用户注册</button></a>
									</td>
								</tr>
							</table>
						</div>
					</div>
				</c:if>

				<c:if test="${sessionScope.user!=null}">
					<div id="um">
						<div class="avt y">
							<a href="index.action"><img src="images/noavatar_small.gif"></a>
						</div>
						<p>
							<strong class="vwmy">
							<a title="个人中心" target="_blank" href="">${sessionScope.user.nickname}</a></strong>
								<span class="pipe">|</span> 
								<a href="logout.action">退出</a>
						</p>
						<p>
							<!-- <a href="">我的帖子</a><span class="pipe">|</span> -->
							<a href="">积分: ${sessionScope.user.score}</a>
						</p>
					</div>
				</c:if>

			</div>

			<div id="nv">
				<ul>
					<li class="a"><a href="index.action">论坛首页</a></li>
					<c:forEach var="module" items="${moduleList}">
						<li><a href="module.action?module.id=${module.id}">${module.name}</a></li>
					</c:forEach>
					<li style="float:right;"><a href="../admin.jsp">后台管理</a></li>
				</ul>
			</div>
			
			<!-- 搜索功能
			<div id="scbar" class="scbar_narrow cl">
				<form id="scbar_form" method="post" action="" target="_blank">
					<input type="hidden" name="mod" id="scbar_mod" value="search" /> 
					<input type="hidden" name="formhash" value="f9cc0ba1" /> 
					<input type="hidden" name="srchtype" value="title" /> 
					<input type="hidden" name="srhfid" value="" /> 
					<table cellspacing="0" cellpadding="0">
						<tr>
							<td class="scbar_icon_td"></td>
							<td class="scbar_txt_td">
								<input type="text" name="srchtxt" id="scbar_txt" value="请输入搜索内容" autocomplete="off"/></td>
							<td class="scbar_type_td"><a href="javascript:;" id="scbar_type" class="xg1" onclick="showMenu(this.id)" hidefocus="true">搜索</a></td>
							<td class="scbar_btn_td">
								<button type="submit" name="searchsubmit" id="scbar_btn" sc="1" class="pn pnc" value="true">
									<strong class="xi2">搜索</strong>
								</button>
							</td>
							<td class="scbar_hot_td">
								<div id="scbar_hot">
									<strong class="xw1">热搜: </strong> 
									<a href="" target="_blank" class="xi2" sc="1">网页游戏</a> 
									<a href="" target="_blank" class="xi2" sc="1">网页游戏</a> 
									<a href="" target="_blank" class="xi2" sc="1">网页游戏</a> 
								</div>
							</td>
						</tr>
					</table>
				</form>
			</div>
			
			<ul id="scbar_type_menu" class="p_pop" style="display: none;">
				<li><a href="javascript:;" rel="forum" class="curtype">帖子</a></li>
				<li><a href="javascript:;" rel="album">相册</a></li>
				<li><a href="javascript:;" rel="user">用户</a></li>
			</ul>
			-->
		</div>
	</div>

</body>
</html>