<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>用户登录</title>
<link href="css/style_1_common.css"rel="stylesheet" type="text/css">
<link href="css/style_1_forum_index.css" rel="stylesheet" type="text/css">
<link href="css/style_1_forum_forumdisplay.css" rel="stylesheet" type="text/css">
</head>
<body >

<jsp:include page="header.jsp"/>

	<div class="wp" id="wp">
		<div class="ptm wp cl" id="ct">
			<div class="mn">
				<div id="main_message" class="bm">

					<div id="main_hnav" class="bm_h bbs">
						<h3 class="xs2" id="layer_reginfo_t">用户登录</h3>
					</div>

					<form action="login.action" method="post">
						<div class="bm_c" id="layer_reg">
							<div class="mtw">
								<div id="reginfo_a">
								
									<div class="rfm">
										<table>
											<tbody>
												<tr>
													<th><span class="rq">*</span><label for="username">用户名:</label></th>
													<td><input type="text" maxlength="15" size="25" class="px" name="user.username" id="username" required="required"></td>
												</tr>
											</tbody>
										</table>
									</div>

									<div class="rfm">
										<table>
											<tbody>
												<tr>
													<th><span class="rq">*</span><label for="password">密码:</label></th>
													<td><input type="password" class="px" size="25" name="user.password" id="password" required="required"></td>
												</tr>
											</tbody>
										</table>
									</div>
									
								</div>

							</div>

						</div>

						<div id="layer_reginfo_b">
							<div class="rfm mbw bw0">
								<table>
									<tbody>
										<tr>
											<th>&nbsp;</th>
											<td>
												<span id="reginfo_a_btn">
													<em>&nbsp;</em>
													<button type="submit" class="pn pnc"><strong>提交</strong></button>
													<button type="reset" class="pn pnc"><strong>重置</strong></button>
												</span>
												<span style="color:red;">${msg}</span>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"/>

</body>
</html>