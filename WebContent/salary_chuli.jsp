<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030" import="java.sql.*"%>
    <%@page import="bao.Conn"%>
    <jsp:useBean id="ShowTime" class="bao.Checkshijian"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>  
<% 
String username=new String(request.getParameter("username").getBytes("ISO-8859-1"),"GB18030");
String salary_all=new String(request.getParameter("salary_all").getBytes("ISO-8859-1"),"GB18030");
String salary_type=new String(request.getParameter("salary_type").getBytes("ISO-8859-1"),"GB18030");
String salary_per=new String(request.getParameter("salary_per").getBytes("ISO-8859-1"),"GB18030");
String beizhu=new String(request.getParameter("beizhu").getBytes("ISO-8859-1"),"GB18030");

try {
	Conn tt = new Conn();
	Connection conn = tt.getConnection();
	// ɾ����Ϣ��SQL���
	String sql = "insert into salary(username,salary_all,salary_type,salary_per,beizhu,salary_time)values('"+username+"','"+salary_all+"','"+salary_type+"','"+salary_per+"','"+beizhu+"','"+ShowTime.showTodayTime()+"')";
	// ��ȡPreparedStatement
	PreparedStatement ps = conn.prepareStatement(sql);
	// ��SQL����еĵ�һ��ռλ����ֵ
	//ps.setInt(1, id);
	// ִ�и��²���
	ps.executeUpdate();
	// �ر�PreparedStatement
	ps.close();
	// �ر�Connection
	conn.close();
	out.println("<script>alert('Ǩ�������Ϣ¼��ɹ���');window.location.href='salary_add.jsp';</script>");
} catch (Exception e) {
	e.printStackTrace();
} 
%>
</body>
</html>