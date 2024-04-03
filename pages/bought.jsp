<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%

	Class.forName("com.mysql.jdbc.Driver");
	String url="jdbc:mysql://localhost/";
	Connection con=DriverManager.getConnection(url,"root","1234");
	String objname = (String) session.getAttribute("user_email");
	//String userID="1";
	String email = request.getParameter("email");
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	String city = request.getParameter("address");
	String sql="USE toy";
	int sold;
	con.createStatement().execute(sql);
	sql="SELECT * FROM `member` WHERE `user_email`= '"+objname+"'";
			String userID="0";
			ResultSet rs=con.createStatement().executeQuery(sql);
			while(rs.next()){
				userID=rs.getString(1);
			}
	sql="SELECT * FROM `cart` WHERE `userID`= "+userID;
	rs=con.createStatement().executeQuery(sql);
	while(rs.next())
	{
		sql="SELECT count(*) FROM `order`";
		ResultSet rs2=con.createStatement().executeQuery(sql);
		rs2.next();
		sql="SELECT * FROM `product` where `productID`="+rs.getString(3);
		ResultSet rs3=con.createStatement().executeQuery(sql);
		rs3.next();
		sql="INSERT `order` Values('"+rs2.getString(1)+"','"+userID+"','"+rs.getString(3)+"','"+rs3.getString(2)+"','"+rs.getString(4)+"','"+name+"','"+email+"','"+tel+"','"+city+"')";
		con.createStatement().execute(sql);
		sold=Integer. valueOf(rs3.getString("sold"))+Integer. valueOf(rs.getString(4));
		sql="update `product` SET sold='"+sold+"' WHERE `productID`='"+rs.getString(3)+"'";
		con.createStatement().execute(sql);
	}
	sql="delete from `cart` where `userID`='"+userID+"'";
	con.createStatement().execute(sql);
	out.print("<script>alert('購買完成'); window.location='shopping cart.jsp'</script>");
			%>