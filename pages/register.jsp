<!DOCTYPE html>
<meta http-equiv=“Content-Type” content=“text/html; charset=utf-8”>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*,java.util.*"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>register</title>
    <link rel="stylesheet" href="../assets/css/register.css">
   <style>
        body {
            margin: 0%;
        }
        .register {
            margin-top: 23%;
        }
       footer {
            margin-top: 55%;
            display: flex;
            justify-content: center;
            align-items: center;

        }
   </style>
       
</head>
<body>
    <header class="site-header">
        <div class="site-identity">
            <h1><a href="../index.jsp">
                <img src="../assets/images/logo.jpg" height="60" width="120">
            </a></h1>
        </div>
        <nav class="site-navigation">
            <ul class="drop-down-menu">
                <input type="text" placeholder="search" name="search" style="border: black 3px solid;border-radius: 10px;">
                <li><a href="#"><img src="../assets/images/search.png" alt=""width="40"height="40"></a></li>
                <li><a href="../pages/home.jsp">首頁</a></li>
                <li><a href="product_list.jsp">商品列表</a>
                    <ul>
                        <li><a href="../pages/product_list.jsp#toy3">玩具總動員</a></li>
                        <li><a href="../pages/product_list.jsp#toy2">汽車總動員</a></li>
                        <li><a href="../pages/product_list.jsp#toy1">怪獸電力公司</a></li>
                    </ul>
                </li>
                 <li><a href="../pages/about.jsp">關於我們</a></li>
                <li><a href="../pages/Store-in.jsp">商店介紹</a></li>
                <%if(session.getAttribute("user_email") != null ){%>
                <li><a href="../pages/personal.jsp">會員專區</a></li>
                 <%}
                else{ %>
                <li><a href="../pages/login.jsp">會員登入</a></li> 
                <%}%>    
                <li><a href="../pages/shopping cart.jsp">購物車</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <div class="register">
            <form class="form" action="sign_up.jsp">
                <h2>會員註冊</h2>
                <div class="group">
                    <lable for="user">姓名</lable>
                    <input type="text" name="user" id="user">
                </div>
                <div class="group">
                    <label for="user_tel">電話</label>
                    <input type="tel" name="user_tel" id="user_tel">
                </div>
                <div class="group">
                    <label for="user_email">帳號(Email)</label>
                    <input type="email" name="user_email" id="user_email">
                </div>
                <div class="group">
                    <label for="user_password">密碼</label>
                    <input type="password" name="user_password" id="user_password">                    
                </div>
                <div class="group">
                    <label for="user_password_again">再次輸入密碼</label>
                    <input type="password" name="user_password_again" id="user_password_again" onchange="if(document.getElementById('user_password').value!=document.getElementById('user_password_again').value){setCustomValidity('密碼不吻合');}"/>
                </div>
                <div class="btn-group">
                    <button class="btn">註冊</button>
                    <button class="btn">取消</button>
                </div>
                <div class="enroll">已經註冊會員！
                <%--
                String one=request.getParameter("user_password");
                String two=request.getParameter("user_password_again");
                if(one==two)
                    {
                    %><div class="enroll">已經註冊會員！<%
                    }
                else{
                    out.print("<script>alert('密碼輸入不符');window.location='register.jsp'</script>");
                }

                --%>            
                    <a href="login.jsp" style="color: #000080;"> 點我登入</a>
                </div>
            </form>
        </div>
    </main>
    <footer>
        Copyright ©2022 吾toy版權所有
    </footer>
</body>
</html>