<!doctype html>
<%@ page import = "java.sql.*"%> 
<%@page import="java.util.*"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="utf-8"%>
<html>
  <head>
    <title>訂單管理</title>
  
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
    padding: 10px;
}

h1
{
  padding-left:10px;
}


</style>
  </head>
  <body>
        <h1>所有訂單</h1>   
          <%

          Class.forName("com.mysql.jdbc.Driver");
          String url="jdbc:mysql://localhost/";
          Connection con=DriverManager.getConnection(url,"root","1234");
          String sql="USE toy";
          request.setCharacterEncoding("utf-8");
          con.createStatement().execute(sql);
         
          sql="select * from toy.order";  
      
          ResultSet rs=con.createStatement().executeQuery(sql);
        
       
                
                while(rs.next())
                {%>
                  <div class="col message_border">

                    <p>訂單編號：<%=rs.getString("OrderID") %></p>
                    <p>收件人 :<%=rs.getString("user")%></p>
                    <p>收件人電話 :<%=rs.getString("user_tel")%></p>
                    <p>收件人地址 :<%=rs.getString("user_address")%></p>
                    <p>商品名稱 : <%=rs.getString("productName")%></p>
                  </div>
                  
              <%
              }%>s
        

      
  

      




      


  </body>
</html>