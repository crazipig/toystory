<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%

	Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://localhost?useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC";
	Connection con=DriverManager.getConnection(url,"root","1234");
	String email = request.getParameter("email");
	String oldpassword = request.getParameter("oldpassword");
	String newpassword = request.getParameter("newpassword");
	String checkpassword = request.getParameter("checkpassword");
	//String userID = (String) session.getAttribute("userID");
	String userID="1";
	
	String sql="USE toy";
	con.createStatement().execute(sql);
	sql="SELECT * FROM `member` WHERE `user_email`=? AND `user_password`=?";
	PreparedStatement psw = null;
	psw=con.prepareStatement(sql);
	psw.setString(1,email);
	psw.setString(2,oldpassword);
	ResultSet rs = psw.executeQuery();
	if(rs.next())
	{
		if(checkpassword.equals(newpassword))
		{
			out.print("成功");
			sql="update `member` SET `user_password`='"+newpassword+"' WHERE `user_email`='"+email+"'";
			con.createStatement().execute(sql);
			out.print("<script>alert('你修改了密碼，未來請使用新密碼登入。'); window.location='personal.jsp'</script>");
		}
		else
		{
			out.print("<script>alert('新密碼與確認密碼不符'); window.location='personal.jsp'</script>");
		}
	}
	else{
	out.print("<script>alert('帳號或密碼錯誤'); window.location='personal.jsp'</script>");
	}
	
	
			%>