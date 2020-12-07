<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>${module.name}</title>
<link href="css/style_1_common.css"rel="stylesheet" type="text/css">
<link href="css/style_1_forum_index.css" rel="stylesheet" type="text/css">
<link href="css/style_1_forum_forumdisplay.css" rel="stylesheet" type="text/css">
</head>
<body>

<div id="wrap">

	<jsp:include page="header.jsp"/>
	
	<div id="wp" class="wp">
		<div id="pt" class="bm cl">
			<div class="z">
				<a href="index.action" class="nvhm" title="首页">首页</a><em>&raquo;</em>
				<a href="index.action">论坛首页</a><em>&raquo;</em>
				<a href="module.action?module.id=${module.id}">${module.name}</a>
			</div>
			<div class="z"></div>
		</div>

		<div id="ct" class="wp cl">

			<div class="mn">
				<div class="fl bm">
				
						<div class="bm bmw  cl">
						
							<div class="bm_h cl">
								<!-- <span class="o"><img src="images/collapsed_no.gif" title="收起/展开" onclick="toggle_collapse('category_1');" /></span> -->
								<h2>${module.name}</h2>
							</div>
							
							<div class="bm_c">
								<table class="fl_tb">
									
									<c:forEach var="topic" items="${topicList}" varStatus="status">
										<tr <c:if test="${status.index>0}">class="fl_row"</c:if>>
											<td class="fl_icn">
												<a href="topic.action?topic.id=${topic.id}"><img src="images/forum.gif" alt="${topic.name}" /></a>
											</td>
											<td>
												<h2>
													<a href="topic.action?topic.id=${topic.id}" style="color: red;">${topic.name}</a>
												</h2>
												<p class="xg2">${topic.intro}</p>
												<p>
													<!-- 版主: <span class="xi2"><a href="" class="notabs">monkeye</a></span> -->
													<em>发帖总数: <span>${topic.postTotal}</span></em>
												</p>
											</td>
											<td class="fl_i">
												<span class="xi2" title="总回复数量">${topic.replyCount}</span>
												<span class="xg1" title="总查看数量"> / ${topic.viewCount}</span>
											</td>
											<td class="fl_by">
												<div>
													<a href="post.action?post.id=${topic.lastPost.id}" class="xi2" title="最新发帖">${topic.lastPost.title}</a> 
													<cite>${topic.lastPost.systimes} <a>${topic.lastPost.user.nickname}</a></cite>
												</div>
											</td>
										</tr>
									</c:forEach>
									
									
								
								</table>
							</div>
						</div>				
					
					
					
				</div>

			</div>

		</div>

	</div>


</div>

<jsp:include page="footer.jsp"/>

</body>
</html>