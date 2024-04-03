<meta http-equiv=“Content-Type” content=“text/html; charset=utf-8”>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*,java.util.*"%>

<%
try {
	Class.forName("com.mysql.jdbc.Driver");
	
		try {
				String url="jdbc:mysql://localhost/";
				Connection con=DriverManager.getConnection(url,"root","1234");
				String sql="USE toy";
				con.createStatement().execute(sql);
				String name = request.getParameter("user");
				String psw = request.getParameter("user_password");
				String phone = request.getParameter("user_tel");
				String email = request.getParameter("user_email");
				try{
				 sql = "insert member(user,user_password,user_tel,user_email) values('"+name+"','"+psw+"','"+phone+"','"+email+"')";
				con.createStatement().execute(sql);
					out.print("<script>alert('註冊成功，返回登入');window.location='login.jsp'</script>");
				}
				catch(SQLException sExec){
					
					out.print("<script>alert('註冊失敗，該帳號存在或有其他問題，返回註冊');window.location='register.jsp'</script>");
				}	
		}
		catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }
}
catch (ClassNotFoundException err) {
    out.println("class錯誤"+err.toString());
}
%>

