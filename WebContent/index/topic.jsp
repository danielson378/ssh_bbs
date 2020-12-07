<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<title>${topic.name}</title>
<link href="css/style_1_common.css"rel="stylesheet" type="text/css">
<link href="css/style_1_forum_forumdisplay.css" rel="stylesheet" type="text/css">
</head>
<body>

<div id="wrap">

	<jsp:include page="header.jsp"/>

	<div id="wp" class="wp">
	
		<div id="pt" class="bm cl">
			<div class="z">
				<a href="index.action" class="nvhm" title="首页">首页</a><em>&raquo;</em>
				<a href="index.action">论坛首页</a><em>&rsaquo;</em> 
				<a href="module.action?module.id=${topic.module.id}">${topic.module.name}</a><em>&rsaquo;</em> 
				<a href="topic.action?topic.id=${topic.id}">${topic.name}</a>
			</div>
		</div>
		
		<div class="boardnav">
			<div id="ct" class="wp cl">
			
				<div class="mn">
				
					<div id="threadlist" class="tl bm bmw">
						<div class="th">
							<table>
								<tr>
									<th colspan="2">标题</th>
									<td class="by">作者</td>
									<td class="num">回复/查看</td>
									<td class="by">最后回复</td>
								</tr>
							</table>
						</div>
						<div class="bm_c">
							<div id="forumnew" style="display: none"></div>
								<table summary="forum_26" id="threadlisttableid">
									
									<c:forEach var="post" items="${postList}">
									
										<tbody id="post_${post.id}">
											<tr>
												<td class="icn">
													<a href="post.action?post.id=${post.id}" title="新窗口打开" target="_blank"> 
														<img src="images/folder_new.gif" />
													</a>
												</td>
												<th class="common">
													<a href="post.action?post.id=${post.id}" class="s xst">${post.title}</a>
												</th>
												<td class="by">
													<cite><a>${post.user.nickname}</a></cite>
													<em><span><span>${post.systimes}</span></span></em>
												</td>
												<td class="num">
													<a class="xi2">${post.replyCount}</a><em>${post.viewCount}</em>
												</td>
												<td class="by">
													<cite><a>${post.lastReply.user.nickname}</a></cite>
													<em><a><span>${post.lastReply.systimes}</span></a></em>
												</td>
											</tr>
										</tbody>
										
									</c:forEach>
									
								</table>
							</div>
					</div>
					
					
					<div class="bm bw0 pgs cl"></div>
					
					
					<div class="bm bw0 pgs cl">
						<div class="pg">
							<span id="fd_page_top">
								<c:if test="${page>1}">
									<a href="topic.action?topic.id=${topic.id}&page=${page-1}" class="nxt">上一页</a>
								</c:if>
								<c:if test="${fn:length(postList)>=size}">
									<a href="topic.action?topic.id=${topic.id}&page=${page+1}" class="nxt">下一页</a>
								</c:if>
							</span> 
						</div>
						<!-- <img src="images/pn_post.png" alt="发新帖" /></a> -->
					</div>
					
					
					
					<div id="f_pst" class="bm">
						<div class="bm_h"><h2>快速发帖</h2></div>
						<div class="bm_c">
							<form method="post" id="fastpostform" action="send.action">
								<input type="hidden" name="post.topic.id" value="${topic.id}">
							
								<div id="fastpostreturn" style="margin: -5px 0 5px"></div>

								<c:if test="${sessionScope.user==null}">
									<div class="cl">
										<div id="fastsmiliesdiv" class="y">
											<div id="fastsmiliesdiv_data">
												<div id="fastsmilies"></div>
											</div>
										</div>
										<div class="hasfsl" id="fastposteditor">
											<div class="tedt">
												<div class="area">
													<div class="pt hm">
														您需要登录后才可以发帖 
														<a href="login.jsp"class="xi2">登录</a> | 
														<a href="register.jsp" class="xi2">立即注册</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:if>
								
								<c:if test="${sessionScope.user!=null}">
									<div class="pbt cl">
										<input type="text" id="subject" name="post.title" class="px" style="width:912px;" placeholder="请输入标题..."> 
									</div>
									<div class="cl">
										<div class="hasfsl" id="fastposteditor">
											<div class="tedt">
												<div class="area">
													<textarea rows="6" cols="80" name="post.content" id="fastpostmessage" class="pt" placeholder="请输入内容..."></textarea>
												</div>
											</div>
										</div>
									</div>
									<p class="ptm pnpost">
										<button type="submit" name="topicsubmit" id="fastpostsubmit" value="topicsubmit" class="pn pnc">
											<strong>发表帖子</strong>
										</button>
									</p>
								</c:if>
							</form>
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