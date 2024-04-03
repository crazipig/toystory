<!DOCTYPE html>
<meta http-equiv=“Content-Type” content=“text/html; charset=utf-8”>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*,java.util.*"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../assets/css/topnew.css">
    <link rel="stylesheet" href="../assets/css/introduction.css">
    <style>
        body {
            margin: 0%;
        }
        .store {
            margin-top: 16.5%;
        }
        footer {
            margin-top: 10%;
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

    <div class="store">
        <img src="picture/logo.jpg" alt="" class="logoback">
        
        <div>
            <h1 class="title">| 商店介紹 |</h1>
            <p class="content"> 「吾 toy」這個名字起源於烏托邦的英文「utopia」，烏托邦象徵著理想完美的意思，我們利用諧音取出了吾toy這個有趣的店名，透過童年經典卡通的角色，帶給帶給大家充滿美好的時光。<br><br>
                 無論是大人小孩都可以藉由這些玩具，找到屬於他自己的理想世界。</p>
            <h2 class="name">吾 TOY</h2>
        </div>
        
    </div>
    <footer>
        Copyright ©2022 吾toy版權所有
    </footer>
</body>
</html>