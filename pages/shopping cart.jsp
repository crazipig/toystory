<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>購物車</title>
    <link rel="stylesheet" href="../assets/css/shoppingcart.css">
    <link rel="stylesheet" href="../assets/css/topnew.css">
    <style>
        body {
            margin: 0%;
        }
        footer {
            margin-top: 85%;
            display: flex;
            justify-content: center;
            align-items: center;

        }
        .zone {
            margin-top: 12%;
            margin-left: 2%;
        }
        .close{
            margin-left: 24.5%;
            background-color: white;
            border-radius: 20px;
            width: 100px;
        }
        .item_txt {
            float: left;

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
        <div class="zone">
            <section>
			<h1 class="title">購物車</h1>
			<%
			String objname = (String)session.getAttribute("user_email");
			//String objname="15";
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost?useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC";
			Connection con=DriverManager.getConnection(url,"root","1234");
			String sql1="USE `toy`";
			con.createStatement().execute(sql1);
			String sql="SELECT * FROM `member` WHERE `user_email`= '"+objname+"'";
			String userID="0";
			String name = "0";
			String mail = "0";
			String tel = "0";
			String address = "0";
			String pic3="0";
			int total=0;
			ResultSet rs=con.createStatement().executeQuery(sql);
			while(rs.next()){
				userID=rs.getString(1);
				name = rs.getString(2);
				mail = rs.getString(5);
				tel = rs.getString(4);
				address = rs.getString(6);
			}
			sql="SELECT * FROM `cart` WHERE `userID`= "+userID;
			ResultSet rs2=con.createStatement().executeQuery(sql);
			char singleQuotesChar = '"';
			while(rs2.next())
			{
				String productID=rs2.getString(3);
				String quantity = rs2.getString(4);
				con.createStatement().execute(sql1);
				sql="SELECT * FROM `product` WHERE `productID`= "+productID;
				ResultSet rs3=con.createStatement().executeQuery(sql);
				while(rs3.next()){
				%>
                <hr>
                <div class="item_space">
                    <div class="item_pic">
                        <a href="#"><img src="<%=rs3.getString(9)%>" alt width="180" height="180"></a>
                        <a href="#"><img src="<%=rs3.getString(10)%>" alt width="180" height="180"></a>
						<%if(rs3.getString(11)!=""&&!(rs3.getString(11).isEmpty()))
							pic3=rs3.getString(11);
						else
							pic3=rs3.getString(10);
						%>
						<a href="#"><img src="<%=pic3%>" alt width="180" height="180"></a>
                    </div>
                    <div class="item_txt">
                        <p>商品名稱 <%=rs3.getString(2)%> </p>
                        <p>商品單價 <%=rs3.getString(7)%> </p>
                        <p>購買數量  
                        <button type="button" class="add" onclick="location.href='cart_add2.jsp?proID=<%=rs3.getString(1)%>'">+</button>
                        <%=rs2.getString(4)%>
                        <button type="button" class="cut" onclick="location.href='cart_reduce.jsp?proID=<%=rs3.getString(1)%>'">-</button>
                        </p>
                        <p>總計 <% out.print(Integer.parseInt(rs3.getString(7))*Integer.parseInt(rs2.getString(4)));%>元 </p>
                        <%total+=Integer.parseInt(rs3.getString(7))*Integer.parseInt(rs2.getString(4));%>
                    </div>
					<button type="button" class="close" aria-label='delete item'  onclick="location.href='cartdelet.jsp?productID=<%=rs3.getString(1)%>'">刪除</button>
                </div>
				<%}%>
				<%}%>
				<br>
				<div class="group">
				 <h2 class="title_2">總價：<%=total%></h2>
				</div>
				<!--
                <div class="item_space">
                    <div class="item_pic">
                        <a href="#"><img src="../assets/images/阿布1.JPG" alt width="180" height="180"></a>
                        <a href="#"><img src="../assets/images/阿布2.JPG" alt width="180" height="180"></a>
                        <a href="#"><img src="../assets/images/阿布3.JPG" alt width="180" height="180"></a>
                    </div>
                    <div class="item_txt">
                        <p>name</p>
                        <p>price</p>
                        <p>quantity</p>
                        <p>total</p>
                    </div>
                </div>
				-->
            </section>
            <section>
                <h1 class="title">訂購資訊</h1>
                <hr>
				<form id=cart action="bought.jsp" method="get">
                <div class="group">
                    <h2 class="title_2">姓名</h2>
                    <input type="text" class="imf" required ="required" name="name" value="<%=name%>">
                </div>
                <div class="group">
                    <h2 class="title_2">信箱</h2>
                    <input type="text" class="imf" required ="required" name="email" value="<%=mail%>">
                </div>
                <div class="group">
                    <h2 class="title_2">電話</h2>
                    <input type="text" class="imf" required ="required" name="tel" value="<%=tel%>">
                </div>
                <div class="group">
                    <h2 class="title_2">住址</h2>
                    <input type="text" class="imf" required ="required" name="address" value="<%=address%>">
                </div>
                <div class="click">
                    <button class="btn" type="submit">
                        確認購買 
                    </button> 
                </div>
				</form>
                
            </section>
        </div>

    </main>
</body>

</html>