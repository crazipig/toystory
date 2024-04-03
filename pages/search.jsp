<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%
	                

	String search=request.getParameter("search");
    Class.forName("com.mysql.jdbc.Driver");
    String url="jdbc:mysql://localhost/";
    Connection con=DriverManager.getConnection(url,"root","1234");
                    String sql="USE toy";
	con.createStatement().execute(sql);
                    //request.setCharacterEncoding("UTF-8");
         
                    
	sql="SELECT * FROM toy.product WHERE prductCName like '%"+search+"%'";
	ResultSet rs=con.createStatement().executeQuery(sql);
                           
	if(rs.next()){
		String ur = rs.getString(1) ;
		//out.println("<a href='commodity.jsp?proID="+rs.getString(1)+"'>");
		response.sendRedirect("commodity.jsp?proID="+ur);
	}

	else
	{
		 	out.println("<script>alert('查無此產品!');location.href='index.jsp'</script>");
		 		}	

	


%>