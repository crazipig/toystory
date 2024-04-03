<!doctype html>
<%@ page import = "java.sql.*"%> 
<%@page import="java.util.*"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="utf-8"%>
<html>
   <head>
      <title>產品刪除JSP</title>
   </head>
   <body>
      <%  

          Class.forName("com.mysql.jdbc.Driver");
          String url="jdbc:mysql://localhost/";
          Connection con=DriverManager.getConnection(url,"root","1234");
          String sql="USE toy";
          request.setCharacterEncoding("utf-8");
          con.createStatement().execute(sql);
         
          String type1=String.valueOf(request.getParameter("type"));	
         
  
         String name=request.getParameter("name");
        
         
         	if(type1.equals("1"))
         {
         	 sql ="DELETE FROM product WHERE prductCName='"+name+"'";
             int rec=con.createStatement().executeUpdate(sql);
         
         	if(rec>0)
         {   
     %>

        <script language="javascript">
         var msg;
         msg = "下架成功";
         alert(msg);
         focus();
        </script>
        <meta http-equiv="refresh" content="0; url=p_delete.jsp">
      
         <% 
         }
         else
         {
         %>
     
	 <script language="javascript">
         var msg;
         msg = "下架失敗";
         alert(msg);
         focus();
      </script>
      <meta http-equiv="refresh" content="0; url=p_delete.jsp">
      <%
         }
         
         }
         				else if(type1.equals("2"))
         				{
         sql ="DELETE FROM product WHERE prductCName='"+name+"'";
                                int rec=con.createStatement().executeUpdate(sql);
         
           		    if(rec>0)
         
         {   
         %>
      <script language="javascript">
         var msg;
         msg = "下架成功";
         alert(msg);
         focus();
      </script>
      <meta http-equiv="refresh" content="0; url=p_delete.jsp">
      <% }
         else
         {
         %>
      <script language="javascript">
         var msg;
         msg = "下架失敗";
         alert(msg);
         focus();
      </script>
      <meta http-equiv="refresh" content="0; url=p_delete.jsp">
      <%
         }
         				}
         				else if(type1.equals("3"))
         				{
         sql ="DELETE FROM product WHERE prductCName='"+name+"'";
                                int rec=con.createStatement().executeUpdate(sql);
         
           		    if(rec>0)
         
         {   
         %>
      <script language="javascript">
         var msg;
         msg = "下架成功";
         alert(msg);
         focus();
      </script>
      <meta http-equiv="refresh" content="0; url=p_delete.jsp">
      <% }
         else
         {
         %>
      <script language="javascript">
         var msg;
         msg = "下架失敗";
         alert(msg);
         focus();
      </script>
      <meta http-equiv="refresh" content="0; url=p_delete.jsp">
      <%
         }
         					}
         				else if(type1.equals("4"))
         				{
         sql ="DELETE FROM product WHERE prductCName='"+name+"'";
                                int rec=con.createStatement().executeUpdate(sql);
         
           		    if(rec>0)
         
         {   
         %>
      <script language="javascript">
         var msg;
         msg = "下架成功";
         alert(msg);
         focus();
      </script>
      <meta http-equiv="refresh" content="0; url=p_delete.jsp">
      <% }
         else
         {
         %>
      <script language="javascript">
         var msg;
         msg = "下架失敗";
         alert(msg);
         focus();
      </script>
      <meta http-equiv="refresh" content="0; url=p_delete.jsp">
      <%
         }
         					}
        
              %>
   </body>
</html>