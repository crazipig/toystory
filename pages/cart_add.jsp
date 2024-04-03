<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost?useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC";
		Connection con=DriverManager.getConnection(url,"root","1234");
		String sql,id;
		ResultSet rs;
		String user_email = (String) session.getAttribute("user_email");
		String proID = request.getParameter("proID");
		int quantity=0;
		if(session.getAttribute("user_email") == null)
    {
        out.print("<script>alert('請先登入！'); window.location='commodity.jsp?proID="+proID+"'</script>");
    }
    else
    {
		String userID="0";
		String temp;
		
		sql="USE toy";
		con.createStatement().execute(sql);
		sql="SELECT * FROM `member` WHERE `user_email`='"+user_email+"'";
		rs=con.createStatement().executeQuery(sql);
		if(rs.next())
		userID=rs.getString(1);
		sql="SELECT * FROM `cart` WHERE `productID`= "+proID+" AND `userID`='"+userID+"'";
		rs=con.createStatement().executeQuery(sql);
		if(rs.next())
		{
		quantity=(Integer.parseInt(rs.getString(4)))+1;
		sql="delete from `cart` where `userID`='"+userID+"' AND `productID`='"+proID+"'";
		con.createStatement().execute(sql);
		}
		else
		quantity=1;
		
		sql="SELECT * FROM `product` WHERE `productID`= "+proID;
		rs=con.createStatement().executeQuery(sql);
		while(rs.next())
		{
		
			sql="SELECT * FROM `product` where `productID`="+rs.getString(1);
			ResultSet rs3=con.createStatement().executeQuery(sql);
			rs3.next();
			sql="INSERT `cart`(`userID`,`productID`, `quantity`) Values('"+userID+"','"+proID+"','"+quantity+"')";
			out.print("sql added");
			con.createStatement().execute(sql);
		}
		out.print("<script>alert('已加入購物車'); window.location='commodity.jsp?proID="+proID+"'</script>");
		}
		%>