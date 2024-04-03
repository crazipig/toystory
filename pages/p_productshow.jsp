<!doctype html>
<%@ page import = "java.sql.*"%> 
<%@page import="java.util.*"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="utf-8"%>
<html>
  <head>
  <title>產品瀏覽</title> 

<style type="text/css">
body 
{
  background-color: #f8f8ff;
  margin-top: 30px;
  margin-left: 50px;
  font-family: 標楷體;
}
.message_border {
    border-top-style: dotted;
    border-color: #D5D4D5;
    padding: 30px;
}

h1
{
	padding-left:10px;
}


</style>
  </head>
  <body>
        <h1>所有商品</h1>
      
<%
		  		Class.forName("com.mysql.jdbc.Driver");
          String url="jdbc:mysql://localhost/";
          Connection con=DriverManager.getConnection(url,"root","1234");
          String sql="USE toy";
          request.setCharacterEncoding("utf-8");
          con.createStatement().execute(sql);

					
							sql="SELECT * FROM product "; //挑出資料庫中相似的影片名稱
							ResultSet rs =  con.createStatement().executeQuery(sql);
							
								while(rs.next())
								{%>
									<div class="col message_border ">
										<img src="<%=rs.getString("pic_path1") %> " class="product" width="290" height="250"><br>

										<p>玩具編號：<%=rs.getString("productID") %></p>
							
										<p>玩具名稱：<%=rs.getString("prductCName") %></p>
										<p>玩具介紹：<%=rs.getString("introduction") %></p>
										<p>玩具價格：<%=rs.getString("productprice")+ "元" %></p>
										<p>玩具庫存：<%=rs.getString("inventory")+"個" %></p>
										
									</div>
									
							<%
							}
%>
        

      
  

      




      


  </body>
</html>