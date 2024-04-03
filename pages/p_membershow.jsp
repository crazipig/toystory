<!doctype html>
<%@ page import = "java.sql.*"%> 
<%@page import="java.util.*"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="utf-8"%>
<html>
    <head>
        <title>會員瀏覽</title>
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
    padding-top: 20px;

}

h1
{
	padding-left:10px;
}


</style>
    </head>
    <body>
	<h1>所有會員</h1>
    <div class="message_border">
                        
	</div>
	   <%  
		
		  Class.forName("com.mysql.jdbc.Driver");
          String url="jdbc:mysql://localhost/";
          Connection con=DriverManager.getConnection(url,"root","1234");
          String sql="USE toy";
          request.setCharacterEncoding("utf-8");
          con.createStatement().execute(sql);
		  
		 //String show[]=new String[]{"","會員密碼：","會員姓名：","電話：","地址："};
		 
//Step 4: 執行 SQL 指令 
                    sql = "SELECT user_email,user,user_password,user_tel,address FROM member" ;
                    ResultSet tmp =  con.createStatement().executeQuery(sql);
//Step 5: 顯示結果             
                    while(tmp.next())
					{	
						out.println("會員電子郵件："+tmp.getString("user_email")+ "<br>");
                        out.println("會員密碼："+tmp.getString("user_password")+ "<br>");
                        out.println("會員姓名："+tmp.getString("user")+ "<br>");
                        out.println("會員電話："+tmp.getString("user_tel")+ "<br>");
                    	out.println("會員地址："+tmp.getString("address")+ "<br>");
					%>
					<br>
					
		            <div class="message_border">
                        
					</div>
					<%
					}
		    
       %>
    </body>
</html>