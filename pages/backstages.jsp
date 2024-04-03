<!doctype html>
<%@ page import = "java.sql.*"%> 
<%@page import="java.util.*"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="utf-8"%>
<%request.setCharacterEncoding("utf-8");%>
<html>
<head>


<title>後台管理界面</title>

</head>

<%
	
	if(session.getAttribute("user_email")==null)
	{
			out.print("<script>alert('請先登入！'); window.location='login.jsp'</script>");
	}
	else
	{
	
	%>



<frameset rows="140,*">
  <frame src="btitle.jsp" name="logo" align="middle" scrolling="no" noresize > </frame>
  <frameset cols="230,*">
    <frame src="bmenu.jsp" name="menu" scrolling="no" noresize>
    <frame src="bcontent.jsp" name="content" scrolling="yes" noresize>
  </frameset>
  <noframes>
  <body>
  
 
   
  
  </body>
  </noframes>
</frameset>
	<%
}
%>



</html> 