<!DOCTYPE html>
<meta http-equiv=“Content-Type” content=“text/html; charset=utf-8”>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*,java.util.*"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../assets/css/about.css" >
    <link rel="stylesheet" href="../assets/css/topnew.css">
    <style>
        body {
            margin: 0%;
        }
        
        footer {
            margin-top: 44.8%;
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
        <section class="space">
        <br><h1>前端人員</h1>
        <hr>
            <div class="container">
                <div class="card">
                  <img src="../assets/images/李奇彧.JPG" alt="" >
                  <div class="info">
                    <h2>李奇彧</h2>
                    <a href="https://instagram.com/sky_lichu_0304?igshid=ZDdkNTZiNTM=" target="blank">
                        <img src="../assets/images/instagram2.0.png" alt="" ></a>
                    <a href="https://www.facebook.com/profile.php?id=100009001231572&mibextid=ZbWKwL"target="blank"><img src="../assets/images/facebook2.0.png" alt="" ></a>
                    <p>心得</p>
                    <p>這次的期末專案我學到了很多，不只是要有<br></br>個健康能熬夜的身體，更要具備優秀的自<br></br>學能力，課程上教的東西都是基本，遠遠不<br></br>到可以應用的部分，我要學的東西還很多，<br></br>甚至還有後端的部分，也謝謝組員凱瑞才能<br></br>完成這次專案</p>
                    </div>
                </div>
                
                <div class="card">
                    <img src="../assets/images/李亞錡.JPG" alt="" >                
                    <div class="info">
                      <h2>李亞錡</h2>
                      <a href="https://instagram.com/ruby1210ycl?igshid=MWI4MTIyMDE="target="blank">
                        <img src="../assets/images/instagram2.0.png" alt="" ></a>
                    <a href="https://www.facebook.com/profile.php?id=100009296418996&mibextid=LQQJ4d"target="blank"><img src="../assets/images/facebook2.0.png" alt="" ></a>
                      <p>心得</p>
                      <p>這次的專案讓我收穫了不少，前端的製作<br></br>除了需要熟悉網頁的程式設計之外，還需要<br></br>具備版面設計美感，這是一件不簡單的事！<br></br>透過這次的專題經驗，讓自己知道哪裡還需<br></br>要加強，哪裡可以更進步。</p>
                      </div>
                  </div>
                
                  <div class="card">
                    <img src="../assets/images/張尚鈞.JPG" alt="" >
                    <div class="info">
                      <h2>張尚鈞</h2>
                      <a href=" https://instagram.com/0122_fad?igshid=YmMyMTA2M2Y="target="blank">
                        <img src="../assets/images/instagram2.0.png" alt="" ></a>
                    <a href="https://www.facebook.com/profile.php?id=100011353080620"target="blank"><img src="../assets/images/facebook2.0.png" alt="" ></a>
                      <p>這次多媒體專案讓我知道自立自強有多重要<br></br>，不會的程式碼就要一直上網查去學習，<br></br>透過自學增進自己的能力，也多虧我的組員<br></br>這麼厲害又凱瑞，才能完成前端的內容，<br></br>他們真的好棒!</p>
                      </div>
                  </div>
              </div>
        </section>
        <section class="space2">
        <h1>後端人員</h1>
        <hr>
            <div class="container">
                <div class="card">
                    <img src="../assets/images/許庭瑄.JPG" alt="" >
                    <div class="info">
                      <h2>許庭瑄</h2>
                      <a href=" https://instagram.com/th_nnon?igshid=YWJhMjlhZTc="target="blank"><img src="../assets/images/instagram2.0.png" alt="" ></a>
                    <a href=" https://www.facebook.com/shannon.hsu.18"target="blank"><img src="../assets/images/facebook2.0.png" alt="" ></a>
                      <p>心得</p>
                      <p>網路程式課程讓我了解到親自實作一個網頁<br></br>的困難度，前後端也需好好配合才能完成<br></br>這項艱難的任務。希望專題能順順利利！</p>
                      </div>
                  </div>
                  
                  <div class="card">
                    <img src="../assets/images/劉又榛.JPG" alt="" >
                      <div class="info">
                        <h2>劉又榛</h2>
                        <a href="https://instagram.com/hoann_91?igshid=MWI4MTIyMDE="target="blank"><img src="../assets/images/instagram2.0.png" alt="" ></a>
                    <a href="https://www.facebook.com/profile.php?id=100007886676941&mibextid=LQQJ4d"target="blank"><img src="../assets/images/facebook2.0.png" alt="" ></a>
                        <p>心得</p>
                        <p>透過這次的專案我學到要對自己好一點，<br></br>泡一杯熱可可繼續熬夜，加油欸</p>
                        </div>
                    </div>
                  
                    <div class="card">
                        <img src="../assets/images/彭御銘.JPG" alt="" >
                      <div class="info">
                        <h2> 彭御銘</h2>
                        <a href="https://instagram.com/jimmy_the_corn?igshid=ZDdkNTZiNTM="target="blank"><img src="../assets/images/instagram2.0.png" alt="" ></a>
                    <a href="https://www.facebook.com/profile.php?id=100000947774534&mibextid=ZbWKwL"target="_blank"><img src="../assets/images/facebook2.0.png" alt="" ></a>
                        <p>心得</p>
                        <p>一開始想說以前有稍微學習過C語言，<br></br>或許可以嘗試看看一邊學Java一邊進行網<br></br>路程式設計的課程，但後來發現需要注意<br></br>東西依然很多，也時不時會不小心把做其他<br></br>語言的習慣帶到這邊，直到運行時報錯才發現。</p>
                        </div>
                    </div>
              </div>
        </section>
    </main>
    <footer>
        Copyright ©2022 吾toy版權所有
    </footer>
</body>
</html>