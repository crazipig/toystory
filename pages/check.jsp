<meta http-equiv=“Content-Type” content=“text/html; charset=utf-8”>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%
		



				Class.forName("com.mysql.jdbc.Driver");
				String url="jdbc:mysql://localhost?useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC";
				Connection con=DriverManager.getConnection(url,"root","1234");
				String sql="USE toy";
				con.createStatement().execute(sql);
				String id = request.getParameter("user_email");
				String psw = request.getParameter("user_password");
	sql = "SELECT * FROM `member` WHERE `user_email`=? AND `user_password`=?";
	PreparedStatement pstmt = null;
	pstmt=con.prepareStatement(sql);
	pstmt.setString(1,request.getParameter("user_email"));
    pstmt.setString(2,request.getParameter("user_password"));
    ResultSet paperrs = pstmt.executeQuery();
    if( id.equals ("admin") &&  psw.equals ("admin")){
			session.setAttribute("user_email","admin");
			out.print("<script>alert('管理員登入成功！'); window.location='backstages.jsp' </script>");
		}

	if(paperrs.next()){
		session.setAttribute("user_email",request.getParameter("user_email"));
		out.print("<script>alert('登入成功！');window.location='home.jsp'</script>");
	}
	else{
		
		out.print("<script>alert('登入失敗，請確認帳號密碼！');window.location='login.jsp'</script>");
	}

%>