<!DOCTYPE html>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>商品列表</title>
    <link rel="stylesheet" href="../assets/css/slide.css">
    <link rel="stylesheet" href="../assets/css/topnew.css">
    <link rel="stylesheet" href="../assets/css/home.css">
    <style>
        .item2 {
            margin-left: 3.5%;
        }
        footer {
            
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
        <!-------------商品導覽-------------->
        <section>
		<%
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost?useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC";
		Connection con=DriverManager.getConnection(url,"root","1234");
		String sql,id;
		ResultSet rs;
		String typetemp="";
		int stopper=0;
		int times=1;
		sql="select * from toy.product order by theme";
        rs=con.createStatement().executeQuery(sql);
		while(stopper==0)
		{
			if(typetemp.equals(""))
				rs.next();
			typetemp=rs.getString(4);
		%>
		        <div class="toyBlock">
            <h1 id="toy<%=times%>"><%=rs.getString(12)%></h1>
            <h2><%=rs.getString(4)%></h2>
            <hr/>
			<div class="wap2">
			<%
			times++;
			while(typetemp.equals(rs.getString(4)))
			{
				%>
                <div class="item2">
                    <a href="../pages/commodity.jsp?proID=<%=rs.getString(1)%>"><img src="<%=rs.getString(9)%>" alt="" width="250"></a>
                    <p><%=rs.getString(2)%>-<%=rs.getString(8)%></p>
                </div>
			<%
				if(!(rs.next()))
				{
					stopper=1;
					break;
				}
			}
				%>
				</div>
				</div>
				<%}%>
		<!--
        <div class="toyBlock">
            <h1 id="toy1">Monsters,Inc</h1>
            <h2>怪獸電力公司</h2>
            <hr/>
            <div class="wap2">
                <div class="item2">
                    <a href="../pages/commodity.html"><img src="../assets/images/大眼仔1.JPG" alt="" width="90%"></a>
                    <p>大眼仔 -公仔</p>

                </div>
                <div class="item2">
                    <a href="../pages/commodity.html"><img src="../assets/images/毛怪1.JPG" alt="" width="90%"></a>
                    <p>毛怪 -公仔</p>
                    
                </div>
                <div class="item2">
                    <a href="../pages/commodity.html"><img src="../assets/images/藍道1.JPG" alt="" width="90%"></a>
                    <p>藍道 -公仔</p>
                    
                </div>
                <div class="item2">
                    <a href="../pages/commodity.html"><img src="../assets/images/阿布1.JPG" alt="" width="90%"></a>
                    <p>阿布 -公仔</p>
                    
                </div>
             </div>
        </div>
        <div class="toyBlock">
            <h1 id="toy2">Cars</h1>
            <h2>汽車總動員</h2>
            <hr/>
            <div class="wap2">
                <div class="item2">
                    <a href="../pages/commodity.html"><img src="../assets/images/脫線1.JPG" alt="" width="90%"></a>
                    <p>脫線 -玩具車</p>
                    
                </div>
                <div class="item2">
                    <a href="../pages/commodity.html"><img src="../assets/images/閃電麥坤1.JPG" alt="" width="90%"></a>
                    <p>閃電麥坤 -玩具車</p>
                    
                </div>
                <div class="item2">
                    <a href="#"><img src="../assets/images/韓大夫1.JPG" alt="" width="90%"></a>
                    <p>韓大夫 -玩具車</p>
                    
                </div>
                <div class="item2">
                    <a href="../pages/commodity.html"><img src="../assets/images/麥大叔1.JPG" alt="" width="90%"></a>
                    <p>麥大叔 -玩具車</p>
                    
                </div>
            </div>
        </div>
        <div class="toyBlock">
            <h1 id="toy3">Toy Story</h1>
            <h2>玩具總動員</h2>
            <hr/>
            <div class="wap2">
                <div class="item2">
                    <a href="../pages/commodity.html"><img src="../assets/images/三眼怪1.JPG" alt="" width="90%"></a>
                    <p>三眼怪 -公仔</p>
                
                </div>
                <div class="item2">
                    <a href="../pages/commodity.html"><img src="../assets/images/叉奇1.JPG" alt="" width="90%"></a>
                    <p>叉奇 -公仔</p>
                    
                </div>
                <div class="item2">
                    <a href="../pages/commodity.html"><img src="../assets/images/巴斯光年1.JPG" alt="" width="90%"></a>
                    <p>巴斯光年 -公仔</p>
                    
                </div>
                <div class="item2">
                    <a href="../pages/commodity.html"><img src="../assets/images/胡迪1.JPG" alt="" width="90%"></a>
                    <p>胡迪 -公仔</p>
                
                </div>
        </div>
        </div>
		-->
        </section>
    </main>
    <footer>
        Copyright ©2022 吾toy版權所有
    </footer>
</body>

</html>