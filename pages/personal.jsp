<!DOCTYPE html>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>個人資料</title>
    <link rel="stylesheet" href="../assets/css/topnew.css">
    <link rel="stylesheet" href="../assets/css/personal.css">
    <style>
        .btnbuy {
            justify-content: center;
            align-content: center;
            flex-wrap: wrap;
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
    <section>
        <div class="tab-contnet">
            <div class="btn-group checkout-btn" role="group" id="tabs">
                <a href="#" class="btn active" id=>個人資料</a>
                <a href="#" class="btn" id=>更改密碼</a>

            </div>
		<%
		String objname = (String)session.getAttribute("user_email");
		//String objname="1";
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost?useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC";
		Connection con=DriverManager.getConnection(url,"root","1234");
		String sql="USE toy";
		con.createStatement().execute(sql);
		String id;
		ResultSet rs;
		sql="select * from `member` where `user_email`= '"+objname+"'";
        rs=con.createStatement().executeQuery(sql);
		while(rs.next())
		{
		%>
            <div id="tab-inner" class="">
                <form class="form-content" id=tab1 action="change.jsp">
                    <div class="form-group">
                        <label for="name">姓名</label>
                        <input type="name" class="form-control" name="name" value="<%=rs.getString(2)%>"required ="required">
                    </div>
                    <div class="form-group">
                        <label for="email">電子郵件信箱</label>
                        <input type="email" class="form-control" name="email" value="<%=rs.getString(5)%>"required ="required">
                    </div>
					<div class="form-group">
                        <label for="password">密碼</label>
                        <input type="password" class="form-control" name="password"required ="required">
                        <i class="fa fa-eye-slash"></i>
                    </div>
                    <div class="form-group">
                        <label for="num">電話號碼</label>
                        <input type="number" class="form-control" name="num" value="<%=rs.getString(4)%>"required ="required">
                    </div>
                    <div class="form-group">
                        <label for="city">地址</label>
                        <input id="city" class="form-control" name="city" value="<%=rs.getString(6)%>"required ="required">
                    </div>
                    <div class="click">
                        <button class="btnbuy">儲存</button>  
                    </div>  
					<button class="btnbuy" onclick="location.href='logout.jsp'" >登出</button> 
                
                    <hr>  
                    <h1 class="buy">訂購資訊</h1>
                    <br><br><br><br><br><br>
				</form>
                <!---->
                <form class="form-content" id=tab2 action="pwchange.jsp" method="get">
                    <div class="form-group">
                        <label for="email">電子郵件信箱</label>
                        <input type="email" class="form-control" name="email" required ="required">
                    </div>
                    <div class="form-group">
                        <label for="password">舊密碼</label>
                        
                        <input type="password" class="form-control" name="oldpassword" required ="required">
                        <i class="fa fa-eye-slash"></i>
                    </div>
                    <div class="form-group">
                        <label for="password">新密碼</label>
                        <input type="password" class="form-control" name="newpassword" required ="required">
                        <i class="fa fa-eye-slash"></i>
                    </div>
                    <div class="form-group">
                        <label for="password">再次確認新密碼</label>
                        <input type="password" name="checkpassword" class="form-control" id="checkpassword" onchange="if(document.getElementById('newpassword').value!=document.getElementById('checkpassword').value){setCustomValidity('密碼不吻合');}"/>
                        <i class="fa fa-eye-slash"></i>
                    </div>
                    <div class="click">
                        <button class="btnbuy" type="submit" form="tab2" >
                           儲存 
                        </button>
                    </div>
                </form>
            </div>
			<%}%>
        </div>
    </section>
    <script src="../assets/js/personal.js"></script>
    <script src="../assets/js/eye.js"></script>
</body>

</html>