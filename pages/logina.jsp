
<%@page contentType="text/thml"%>
<%@page pageEncoding="MS950"%>
<%@page import ="java.sql"%>

<% 
session.setAttribute("access","n");
if(request.getParameter("user_id") !=null &&
   request.getParameter("user_password") !=null){
    Class.forName("jsp.mysql.jdbc.Driver");
    String url="jdbc:mysql://localhost/?serverTimezone=UTC";
    Connection con=DriverManager.getConnection(url,"root","msql1234");
    Statement smt = con.createStatement
        (ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
    String getpaperdata=
        "SELECT * FROM member WHERE memberID'"+
        request.getParameter("user_id")+"' AND memberpwd '"+
        request.getParameter("user_password")+"'" ;
    ResultSet paperrs=smt.executeQuery(getpaperdata);
    if(paperrs.next()){
        session.setAttribute("access","y");
        session.setAttribute("accessid",request.getParameter("user_id"));
        session.setMaxInactiveInterval(5);
        reponse.sendRedirect("accesspagea.jsp");
    }else 
        out.println("帳號密碼不符！！");
}
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <style>
        @import "../assets/css/login.css";
    </style>
</head>
<body>

    <main>
        <div class="login">
            <form class="form">
                <h2>會員登入</h2>
                <div class="group">
                    <lable for="user_id">帳號：</lable>
                    <input type="text" name="" id="user_id">
                    <% if(request.getParameter("user_id")!=null){ %>
                    value='<%=request.getParameter("user_id")%>'
                    <%}%>
                </div>
                <div class="group">
                    <label for="user_password">密碼：</label>
                    <input type="password" name="" id="user_password">
                     <% if(request.getParameter("user_password")!=null){ %>
                    value='<%=request.getParameter("user_password")%>'
                    <%}%>
                </div>
                <div class="btn-group">
                    <button class="btn">登入</button>
                    <button class="btn">取消</button>
                </div>
                <div class="enroll">尚未註冊會員？                
                    <a href="register.html" style="color: #000080;"> 點我註冊</a>
                </div>
            </form>
        </div>
    </main>
</body>
</html>