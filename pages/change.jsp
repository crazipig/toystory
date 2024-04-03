<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%

	Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://localhost/";
	Connection con=DriverManager.getConnection(url,"root","1234");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String num = request.getParameter("num");
	String city = request.getParameter("city");
	//String userID = (String) session.getAttribute("userID");
	String userID="1";
	
	String sql="USE toy";
	con.createStatement().execute(sql);
	sql="SELECT * FROM member WHERE userID=? AND user_password=?";
	PreparedStatement psw = null;
	psw=con.prepareStatement(sql);
	psw.setString(1,userID);
	psw.setString(2,password);
	ResultSet rs = psw.executeQuery();
	if(rs.next())
	{
			sql="update member SET user='"+name+"' WHERE userID='"+userID+"'";
			con.createStatement().execute(sql);
			sql="update member SET user_email='"+email+"' WHERE userID='"+userID+"'";
			con.createStatement().execute(sql);
			sql="update member SET user_tel='"+num+"' WHERE userID='"+userID+"'";
			con.createStatement().execute(sql);
			sql="update member SET address='"+city+"' WHERE userID='"+userID+"'";
			con.createStatement().execute(sql);
			out.print("<script>alert('資料修改完成'); window.location='personal.jsp'</script>");
	}
	else{
	out.print("<script>alert('密碼錯誤'); window.location='personal.jsp'</script>");
	}
			%>