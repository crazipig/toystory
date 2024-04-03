<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>register</title>
</head>
<body>
<%

    if(session.getAttribute("user_email") == null)
    {
        out.print("<script>alert('請先登入！'); window.location='login.jsp'</script>");

    }
    else
    {

try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線  
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        String sql="USE toy";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫   
           con.createStatement().execute(sql);
           request.setCharacterEncoding("UTF-8");

           //ResultSet rs=con.createStatement().executeQuery(sql);
       %>
           <%!
            String newline(String str)
            {
                int index=0;
                while((index=str.indexOf("\n"))!=-1)
                    str="<br>"+str.substring(0,index)+"<br>"+str.substring(index+1);
                return(str);
            }
            %>
            <%
            String email=(String)session.getAttribute("user_email"); 
            sql="select * from member where user_email='"+email+"'";
            ResultSet rs=con.createStatement().executeQuery(sql);
            rs.next();
            String user=(String)rs.getString("user");
            

           String productID=(String)request.getParameter("proID");
           //Object n = session.getAttribute("user");
           //String name = String.valueOf(n);
           String new_JudgeMent=request.getParameter("JudgeMent");
           String new_Content=request.getParameter("Content");
         
           java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());
//Step 4: 執行 SQL 指令 
           new_Content=newline(new_Content);
           sql="INSERT guestbook (`productID`,`JudgeMent`, `Content`, `putdate`,`user`) ";
           sql+="VALUES ('" + productID + "', ";
           sql+="'"+new_JudgeMent+"\', ";
           sql+="'"+new_Content+"', "; 
           sql+="'"+new_date+"', ";            
           sql+="'"+user+"')";         

           con.createStatement().execute(sql);
//Step 6: 關閉連線

        
        //ResultSet ms=con.createStatement().executeQuery(sql);
      
        while(true){
        request.setAttribute("proID",productID);    
        out.print("<script>alert('留言新增成功！');</script>");
        %> <jsp:forward page="commodity.jsp"/> <%
        }
           
//Step 5: 顯示結果 
          //直接顯示最新的資料
           //response.sendRedirect("view.jsp?page=1");
        }
    }
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }
}
catch (ClassNotFoundException err) {
   out.println("class錯誤"+err.toString());
    }
}
%>
</body>
</html>
