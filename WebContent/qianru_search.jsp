<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
<link href="css/css.css" rel="stylesheet" type="text/css">
</head>
<body>
<%String users=(String)session.getAttribute("users"); %>
<form id="form1" name="form1" method="get" action="qianruSearch_Servlet">
  <table width="830" height="487" border="0" cellpadding="0" cellspacing="0">
    <tr> 
      <td valign="top" style="padding-left:15px; padding-top:15px;" background="image/right.jpg">
      <table width="800" height="30" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="241" align="right">用户姓名：</td>
          <td width="190"><input name="username" type="text" id="username" value="<%=users %>" readonly/>
            &nbsp;</td>
          <td width="369"><input type="submit" name="Submit" value="查询" /></td>
        </tr>
      </table></td>
    </tr>
  </table>
</form>
</body>
</html> 