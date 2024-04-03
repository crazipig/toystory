<!doctype html>
<%@ page import = "java.sql.*"%> 
<%@page import="java.util.*"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="utf-8"%>
<html>
    <head>
        <title>商品修改</title>
    </head>
    <body>      
	   <%  		
	      Class.forName("com.mysql.jdbc.Driver");
          String url="jdbc:mysql://localhost/";
          Connection con=DriverManager.getConnection(url,"root","1234");
          String sql="USE toy";
          request.setCharacterEncoding("utf-8");
          con.createStatement().execute(sql);
		  
                    String ID=request.getParameter("ID");
					String type1=request.getParameter("type");
                    String name=request.getParameter("name"); 
                    String ename=request.getParameter("Ename");
                    String theme=request.getParameter("theme");
                    String themeEng=request.getParameter("themeEng");
                    String introduction=request.getParameter("introduction");
                    String lines=request.getParameter("lines");
                    String price=request.getParameter("price");
                    String inventory=request.getParameter("inventory");
                    String img1=request.getParameter("img1");
                    String img2=request.getParameter("img2");
                    String img3=request.getParameter("img3");
					   
					sql = "UPDATE product SET prductCName = '"+name+"',productEname = '"+ename+"',theme = '"+theme+"',introduction = '"+introduction+"',lines = '"+lines+"',productprice = '"+price+"',type = '"+type1+"',pic_path1 = '"+img1+"',pic_path2 = '"+img2+"',pic_path3 = '"+img3+"',themeEng = '"+themeEng+"',inventory = '"+inventory+"' WHERE product_ID = '"+ID+"' ";

             con.createStatement().execute(sql);
				
        	 // 顯示結果          
         		out.print("<script>alert('新增成功'); window.location='addproduct.jsp' </script>");
                con.close();
%>

       
    </body>
</html>
