<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<title>${post.title}</title>
<link href="css/style_1_common.css"rel="stylesheet" type="text/css">
<link href="css/style_1_forum_viewthread.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../ueditor/ueditor.config.js"></script>
<script type="text/javascript" src="../ueditor/ueditor.all.js"></script>
<script type="text/javascript" src="../ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<body>

<div id="wrap">

	<jsp:include page="header.jsp"/>

	<div id="wp" class="wp">
	
		<div id="pt" class="bm cl">
			<div class="z">
				<a href="index.action" class="nvhm" title="首页">首页</a><em>&raquo;</em>
				<a href="index.action">论坛首页</a><em>&rsaquo;</em> 
				<a href="module.action?module.id=${post.topic.module.id}">${post.topic.module.name}</a><em>&rsaquo;</em> 
				<a href="topic.action?topic.id=${post.topic.id}">${post.topic.name}</a><em>&rsaquo;</em>
				<a href="post.action?post.id=${post.id}">${post.title}</a>
			</div>
		</div>
		
		<div class="boardnav">
			<div id="ct" class="wp cl">
			
				<div class="mn">

						<div id="postlist" class="pl bm">
							<table>
								<tbody>
									<tr>
										<td class="pls ptn pbn">
											<div class="hm ptn">
												<span class="xg1">查看:</span> <span class="xi1">${post.viewCount}</span>
												<span class="pipe">|</span>
												<span class="xg1">回复:</span> <span class="xi1">${post.replyCount}</span>
											</div>
										</td>
										<td class="plc ptm pbn vwthd">
											<h1 class="ts">
												<span id="thread_subject">${post.title}</span>
											</h1>
										</td>
									</tr>
								</tbody>
							</table>

							<table class="ad">
								<tbody>
									<tr>
										<td class="pls"></td>
										<td class="plc"></td>
									</tr>
								</tbody>
							</table>
							
							<div id="">
								<table class="plhin">
									<tbody>
										<tr>
											<td class="pls" rowspan="2">
												<div id="" class="pls favatar">
													<div class="pi">
														<div class="authi">
															<a href="home.php?mod=space&amp;uid=3077707"
																target="_blank" class="xw1">${post.user.nickname}</a>
														</div>
													</div>
													<div>
														<div class="avatar">
															<a href="" class="avtm" target="_blank">
																<img src="http://uc.discuz.net/images/noavatar_middle.gif">
															</a>
														</div>
													</div>
													<div class="tns xg2">
														<table>
															<tbody>
																<tr>
																	<td>
																		<p>积分: ${post.user.score}</p>
																	</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</td>
											<td class="plc">
												<div class="pi">
													<div class="pti">
														<div class="pdbt"></div>
														<div class="authi">
															<em id="">发表于 <span>${post.systimes}</span></em> 
															<!-- <span class="pipe">|</span> --> 
														</div>
													</div>
												</div>
												<div class="pct">
												
													<div class="pcb">
														<div class="t_fsz">
															<table>
																<tbody>
																	<tr>
																		<td class="t_f" id="">${post.content}</td>
																	</tr>
																</tbody>
															</table>
															
															<c:if test="${sessionScope.user!=null}">

															<form method="post" autocomplete="off" action="reply.action">
																<div id="vfastpost" class="fullvfastpost">
																	<input name="reply.post.id" value="${post.id}" type="hidden">
																	<table id="vfastposttb">
																		<tbody>
																			<tr>
																				<td id="vf_l"></td>
																				<td id="vf_m">
																					<input name="reply.content" id="vmessage" style="color: rgb(205, 205, 205);" type="text"></td>
																				<td id="vf_r"></td>
																				<td id="vf_b">
																					<button type="submit" class="pn pnc" name="replysubmit" id="vreplysubmit" value="true" style="">post_newreply</button>
																				</td>
																			</tr>
																		</tbody>
																	</table>
																</div>
																<div id="vfastpostseccheck"></div>
															</form>
															
															</c:if>

														</div>
													</div>
												</div>

											</td>
										</tr>
										<tr></tr>
										<tr class="ad">
											<td class="pls"></td>
											<td class="plc"></td>
										</tr>
									</tbody>
								</table>
							</div>
							
							
							
							<c:forEach var="reply" items="${replyList}" varStatus="status">
							
							
							<div id="">
								<table class="plhin" >
									<tbody>
										<tr>
											<td class="pls" rowspan="2">
												<div id="" class="pls favatar">
													<div class="pi">
														<div class="authi">
															<a href="" target="_blank" class="xw1">${reply.user.nickname}</a>
														</div>
													</div>
													<div>
														<div class="avatar">
															<a href="" class="avtm" target="_blank">
																<img src="http://uc.discuz.net/images/noavatar_middle.gif">
															</a>
														</div>
													</div>
													<div class="tns xg2">
														<table >
															<tbody>
																<tr>
																	<td>
																		<p>积分: ${reply.user.score}</p>
																	</td>
																</tr>
															</tbody>
														</table>
													</div>

												</div>
											</td>
											<td class="plc">
												<div class="pi">
													<c:if test="${status.count==1}"><strong><a>沙发</a></strong></c:if>
													<c:if test="${status.count==2}"><strong><a>板凳</a></strong></c:if>
													<c:if test="${status.count>2}"><strong><a>${status.count}#</a></strong></c:if>
													
													<div class="pti">
														<div class="pdbt"></div>
														<div class="authi">
															<em id="">发表于 <span>${reply.systimes}</span></em> 
															<!-- <span class="pipe">|</span> --> 
														</div>
													</div>
												</div>
												<div class="pct">
												
													<div class="pcb">
														<div class="t_fsz">
															<table >
																<tbody>
																	<tr>
																		<td class="t_f" id="">${reply.content}</td>
																	</tr>
																</tbody>
															</table>

														</div>
													</div>
												</div>

											</td>
										</tr>
										<tr></tr>
										<!-- 
										<tr>
											<td class="pls"></td>
											<td class="plc" style="overflow: visible;">
												<div class="po hin">
													<div class="pob cl">
														<em><a class="fastre">回复</a></em>
													</div>
												</div>
											</td>
										</tr> -->
										<tr class="ad">
											<td class="pls"></td>
											<td class="plc"></td>
										</tr>
									</tbody>
								</table>
							</div>
							
							</c:forEach>
							
						</div>

						<div class="bm bw0 pgs cl"></div>
					
					
					<div class="bm bw0 pgs cl">
						<div class="pg">
							<span id="fd_page_top">
								<c:if test="${page>1}">
									<a href="post.action?post.id=${post.id}&page=${page-1}" class="nxt">上一页</a>
								</c:if>
								<c:if test="${fn:length(replyList)>=size}">
									<a href="post.action?post.id=${post.id}&page=${page+1}" class="nxt">下一页</a>
								</c:if>
							</span> 
						</div>
						<!-- <img src="images/pn_post.png" alt="发新帖" /></a> -->
					</div>
					
					
					
					<div id="f_pst" class="bm">
						<div class="bm_h"><h2>发表回复</h2></div>
						<div class="bm_c">
							<form method="post" id="fastpostform" action="reply.action">
								<input type="hidden" name="reply.post.id" value="${post.id}">
							
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
														您需要登录后才可以回复 
														<a href="login.jsp"class="xi2">登录</a> | 
														<a href="register.jsp" class="xi2">立即注册</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:if>
								
								<c:if test="${sessionScope.user!=null}">
<!-- 									<div class="cl"> -->
<!-- 										<div class="hasfsl" id="fastposteditor"> -->
<!-- 											<div class="tedt"> -->
<!-- 												<div class="area"> -->
<!-- 													<textarea rows="6" cols="80" name="reply.content" id="fastpostmessage" class="pt" placeholder="请输入回复内容..."></textarea> -->
<!-- 												</div> -->
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 									</div> -->
									<!-- 加载编辑器的容器 -->
									<script id="fastpostmessage" name="reply.content" type="text/plain" style="width:100%; height:300px;">
										这里写你的初始化内容
									</script>
									<p class="ptm pnpost">
										<button type="submit" name="topicsubmit" id="fastpostsubmit" value="topicsubmit" class="pn pnc">
											<strong>发表回复</strong>
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


	<!-- 实例化编辑器 -->
<script type="text/javascript">
	var ue = UE.getEditor('fastpostmessage');
</script>
<jsp:include page="footer.jsp"/>

</body>
</html>