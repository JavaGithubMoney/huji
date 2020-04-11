<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
<link href="css/css.css" rel="stylesheet" type="text/css">
</head>
<body>
	<table width="830" height="485" border="0">
		<tr>
			<td valign="top" background="image/right.jpg"
				style="padding-left: 15px; padding-top: 15px;">
				<%
String user_name=(String)session.getAttribute("user_name");
if(user_name==null) {


%>
				<form id="form1" name="form1" method="post" action="login_chuli.jsp">
					<table width="484" height="280" border="0" >
						<tr>
							<td valign="top" background="image/1.jpg"><table width="484"
									border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td height="98" colspan="2">&nbsp;</td>
									</tr>
									<tr>
										<td width="167" height="28" align="right">账户：</td>
										<td width="324" height="20"><input name="username"
											type="text" id="username" /></td>
									</tr>
									<tr>
										<td height="20" align="right">密码：</td>
										<td height="20"><input name="password" type="password"
											id="password" /></td>
									</tr>
									<tr>
										<td height="30" align="right">权限：</td>
										<td height="30"><select name="types">
												<option value="用户">用户</option>
												<option value="管理">管理</option>
										</select></td>
									</tr>
									<tr>
										<td height="54">&nbsp;</td>
										<td height="54"><input type="submit" name="Submit"
											value="登陆" /> &nbsp; <input type="reset" name="Submit2"
											value="重置" /></td>
									</tr>
									<tr>
										<td colspan="2">&nbsp;</td>
									</tr>
								</table></td>
						</tr>
					</table>
				</form> <%}else{%>
				<table width="484" height="280" border="0">
					<tr>
						<td valign="top">欢迎管理员登陆系统，您可以对任何信息进行操作！</td>
					</tr>
				</table> <%} %>
			</td>
		</tr>
	</table>
</body>
</html>