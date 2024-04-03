<!DOCTYPE html>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>商店首頁</title>
    <link rel="stylesheet" href="../assets/css/slide.css">
    <link rel="stylesheet" href="../assets/css/topnew.css">
    <link rel="stylesheet" href="../assets/css/home.css">
    <style>
        footer {
            
            display: flex;
            justify-content: center;
            align-items: center;

        }
        .classification {

        }
        .item{
            margin-left: 10%;
        }
        .item2 {
            margin-left: 5%;
        }
        p{
            font-size: 30px;
            margin-left: 12%;
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
                <li>
                    <form action="search.jsp">
                    <input type="text" id="fsearch" name="search" style="border: black 3px solid;border-radius: 10px;">
                    <input type="image" src="../assets/images/search.png" width="40" height="40" onclick="submit()">
                    </form>
                </li>
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
    <div>
        <div class="slider">
            <div class="slides">
                <!---->
                <input type="radio" name="radio-btn" id="radio1">
                <input type="radio" name="radio-btn" id="radio2">
                <input type="radio" name="radio-btn" id="radio3">
                <!---->
                <div class="slide first">
                    <img src="../assets/images/poster1.jpg" alt="">
                </div>
                <div class="slide ">
                    <img src="../assets/images/poster2.jpg" alt="">
                </div>
                <div class="slide ">
                    <img src="../assets/images/poster3.jpg" alt="">
                </div>
                <!---->
                <div class="navigation-auto">
                    <div class="auto-btn1"></div>
                    <div class="auto-btn2"></div>
                    <div class="auto-btn3"></div>
                </div>
            </div>
            <div class="navigation-manual">
                <label for="radio1" class="manual-btn"></label>
                <label for="radio2" class="manual-btn"></label>
                <label for="radio3" class="manual-btn"></label>
            </div>
        </div>
        <script src="../assets/js/slide.js"></script>
    </div>
    <main>
        <!------------熱銷商品--------->
		<%
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost?useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC";
		Connection con=DriverManager.getConnection(url,"root","1234");
		String sql,id;
		ResultSet rs;
		sql="select * from toy.product order by sold desc limit 3";
        rs=con.createStatement().executeQuery(sql);
		%>
        <section>
        <div class="classification">
            <h1 class="h11">熱銷前三名｜</h1>
            <hr class="hr1">
			<div class="wap">
		<% while(rs.next())
		{
		%>
                <div class="item">
				<p class="crown"><img src="../assets/images/皇冠.png" width="150" height="100"><br>
                    <a href="../pages/commodity.jsp?proID=<%=rs.getString(1)%>"><img src="<%=rs.getString(9)%>" alt="" width="250" height="250"></a>
                    <p><%=rs.getString(2)%>-<%=rs.getString(8)%></p>
                </div>
				<%}%>
				<!--
            <div class="wap">
                <div class="item">
                <p class="crown"><img src="../assets/images/皇冠.png" width="150" height="100"><br>
                    <a href="../pages/commodity.html"><img src="../assets/images/叉奇1.JPG" alt="" width="250" height="250"></a>
                    <p>叉奇 -公仔</p>
                </div>
                <div class="item">
                <p class="crown"><img src="../assets/images/皇冠.png" width="150" height="100"><br>
                    <a href="../pages/commodity.html"><img src="../assets/images/巴斯光年1.JPG" alt="" width="250" height="250"></a>
                    <p>巴斯光年 -公仔</p>
                </div>
                <div class="item">
                <p class="crown"><img src="../assets/images/皇冠.png" width="150" height="100"><br>
                    <a href="../pages/commodity.html"><img src="../assets/images/閃電麥坤1.JPG" alt="" width="250" height="250"></a>
                    <p>閃電麥坤 -玩具車</p>
                </div>
				-->
            </div>
        </div>
        </section>
        <!-------------商品導覽-------------->
        <section>
        <div class="toyBlock">
            <h1 id="toy1"></h1>
            <h2>這件商品很適合你呢</h2>
            <hr/>
		<%
		sql="select * from toy.product order by rand() limit 3";
        rs=con.createStatement().executeQuery(sql);
		while(rs.next())
		{
		%>
            <div class="wap2">
                <div class="item2">
                    <a href="../pages/commodity.jsp?proID=<%=rs.getString(1)%>"><img src="<%=rs.getString(9)%>" alt="" width="350"></a>
                    <p><%=rs.getString(2)%>-<%=rs.getString(8)%></p>
                </div>
				<%}%>
				<!--
                <div class="item2">
                    <a href="../pages/commodity.html"><img src="../assets/images/毛怪1.JPG" alt="" width="250"></a>
                    <p>毛怪 -公仔</p>
                    
                </div>
                <div class="item2">
                    <a href="../pages/commodity.html"><img src="../assets/images/藍道1.JPG" alt="" width="250"></a>
                    <p>藍道 -公仔</p>
                    
                </div>
                <div class="item2">
                    <a href="../pages/commodity.html"><img src="../assets/images/阿布1.JPG" alt="" width="250"></a>
                    <p>阿布 -公仔</p>
                    
                </div>
				-->
             </div>
        </div>
        </section>
    </main>
    <footer>
        Copyright ©2022 吾toy版權所有
    </footer>
</body>

</html>