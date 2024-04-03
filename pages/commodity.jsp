<!DOCTYPE html>
<meta http-equiv=“Content-Type” content=“text/html; charset=utf-8”>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*,java.util.*"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../assets/css/commodity.css">
    <link rel="stylesheet" href="../assets/css/topnew.css">
    <link rel="stylesheet" href="../assets/css/star.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    body {
        margin: 0%;
    }
 footer {
            display: inline-block;
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;

        }
</style>

</head>

<body>
    <!-- 商品info -->
    <%
            
            String id =(String) request.getAttribute("proID"); //抓取從主頁點進來的商品參數
            if (id==null) 
             {
                id=request.getParameter("proID");
             } 

            
            out.print(id);
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost?useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC";
            Connection con=DriverManager.getConnection(url,"root","1234");
            String sql="USE toy";
            request.setCharacterEncoding("utf-8");
            con.createStatement().execute(sql);
          
 
              sql="select * from product where productID='"+id+"'";  
            
            ResultSet rs=con.createStatement().executeQuery(sql);
            while(rs.next()){
            %>
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
        <h1 class="bigword">怪獸電力公司</h1>
        <hr class="hr-edge">
        <div class="bd">
            <div class="slideshow-container">

                <div class="mySlides fade">
                    <div class="numbertext">1 / 3</div>
                    <img src="<%=rs.getString(9)%>" style="width:100%">
                </div>

                <div class="mySlides fade">
                    <div class="numbertext">2 / 3</div>
                    <img src="<%=rs.getString(10)%>" style="width:100%">
                </div>

                <div class="mySlides fade">
                    <div class="numbertext">3 / 3</div>
                    <img src="<%=rs.getString(11)%>" style="width:100%">
                </div>

                <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                <a class="next" onclick="plusSlides(1)">&#10095;</a>

                <div style="text-align:center">
                    <span class="dot" onclick="currentSlide(1)"></span>
                    <span class="dot" onclick="currentSlide(2)"></span>
                    <span class="dot" onclick="currentSlide(3)"></span>
                </div>
            </div>
            <br>
            <script src="../assets/js/pageslide.js">   </script>
            <div class="bdtext">
                <h2><%=rs.getString("prductCName")%></h2><h3><%=rs.getString("productEName")%></h3>
                <hr class="hrst">
                <h5>主題：<%=rs.getString("theme")%></h5>
                <h4>角色介紹:</h4>
                <h5><%=rs.getString("introduction")%></h5>
                <h5>經典名言：<%=rs.getString("lines")%></h5>
            </div>

            <!--價錢-->

            <div class="money">
                <p>$<%=rs.getString("productprice")%></p>
            </div>

            <!--星星符號-->
            <div>

            <%
             sql = "select * from guestbook where productID = '"+id+"' ORDER BY `Gbno` DESC limit 5";
            ResultSet c = con.createStatement().executeQuery(sql);
            float sum =0;
            int times=0;
            while(c.next()){
            String a=c.getString("JudgeMent");
            //out.print(a); 
            int s = Integer.parseInt(a);
            sum=sum+s;
            times+=1;
            }
            float k=Math.round(sum/times);
            float n=5-k;


                    for(int i=0;i<k;i++)
                    {
                        %><span class="fa fa-star checked"></span>&nbsp<%   
                    }
                    for(int j=0;j<n;j++)
                        {
                        %><span class="fa fa-star"></span>&nbsp<%   
                    }
                                    
                %>
            </div><br>
            <form id=commodity action="cart_add.jsp" method="get">
            <input type="hidden" name="proID" value="<%=id%>">
            <!--數量按鈕-->
            <!--
            <div class="wrapper">
                <span class="minus">-</span>
               <span class="num">01</span>
                <span class="plus">+</span>
            </div><br><br>
            <script src="../assets/js/number.js">

            </script>
        -->
            <!--購物車按鈕-->
            <div>
                <button class="shopping" type="submit">加入購物車</button>
            </form>
            </div>
            </div>
        </div>
    </section>
    <%}%>


    <section class="commentspace">
        <h1 class="title">留下評論</h1>
        <form action="add.jsp"method="post" id="usrform">
            <input type="hidden" name="proID" value="<%=id%>">
        <div class="content">
            <span class="red">*</span>
            <span class="total-star">總體評價：</span>
            <input type="radio"  name="JudgeMent" id="JudgeMent" value="1" class="star">
            <input type="radio"  name="JudgeMent" id="JudgeMent" value="2" class="star">
            <input type="radio"  name="JudgeMent" id="JudgeMent" value="3" class="star">
            <input type="radio"  name="JudgeMent" id="JudgeMent" value="4" class="star">
            <input type="radio"  name="JudgeMent" id="JudgeMent" value="5" class="star">
            <span class="stars">評分</span>
        </div>
        <br>
        <div class="comment">
            <textarea name="Content" id="" cols="70" rows="10" placeholder="留下您對於產品的評論"></textarea>
            <br>
            <input type="submit" class="sent" value="送出評論" >
        </form>
        </div>
        <script src="../assets/js/star.js"></script>
    </section>
    <section class="commentspace">
        <h1 class="title">商品評價</h1>
        <hr>
           <%
            sql = "select * from guestbook where productID = '"+id+"' ORDER BY `Gbno` DESC limit 5";
            ResultSet content = con.createStatement().executeQuery(sql);

                while (content.next())
                {  
				String J=content.getString("JudgeMent");
				int s = Integer.parseInt(J);
				int n=5-s;
                %>
                <img src="../assets/images/people.png" alt="" width="10%">
                <span>
                    <p><%=content.getString("user")%>               
                    </span>
                <span>
                    <p>
					<%
					for(int i=0;i<s;i++)
					{
					%><span class="fa fa-star checked"></span>&nbsp<%	
					}
					for(int j=0;j<n;j++)
						{
					%><span class="fa fa-star"></span>&nbsp<%	
					}%>
				</span>
                <span>
                    <p><%=content.getString("Content")%>               
                    </span>
                <p><%=content.getString("putdate")%></p>
                <hr>
                <%

				}    
        
            %>

    </section>



</body>
<footer>
        Copyright ©2022 吾toy版權所有
    </footer>

</html>