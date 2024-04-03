<!DOCTYPE html>
<meta http-equiv=“Content-Type” content=“text/html; charset=utf-8”>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*,java.util.*"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/css/index.css">
    <style>
        body {
            margin: 0%;
        }
        footer {
            margin-top: 44%;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 0.4%;
            height: 60px;
        }
    </style> 
</head>
<body>
    <main>
    <header class="site-header">
        <div class="site-identity">
            <h1><a href="#">
                <img src="../期末專案/assets/images/logo.jpg" height="60" width="120">
            </a></h1>
        </div>
        <nav class="site-navigation">
            <ul  class="drop-down-menu">
                <input  type="text" placeholder="search" name="search" style="border: black 3px solid;border-radius: 10px;">
                <li><a href="#"><img src="../期末專案/assets/images/search.png" alt=""width="40"height="40"></a></li>
                <li><a href="#">主題</a>
                    <ul>
                        <li><a href="#toy3">玩具總動員</a></li>
                        <li><a href="#toy2">汽車總動員</a></li>
                        <li><a href="#toy1">怪獸電力公司</a></li>
                    </ul>
                </li>
                <li><a href="../期末專案/pages/about.jsp">關於我們</a></li>
                <li><a href="../期末專案/pages/Store-in.jsp">商店介紹</a></li>
                <li><a href="../期末專案/pages/login.jsp">會員專區</a></li>
                <li><a href="../期末專案/pages/shopping cart.jsp">購物車</a></li>
            </ul>
        </nav>
    </header>

    
        <button class="btn" style="font-weight: 600;font-size: 20px;">LEARN MORE</button>
        <button class="btn2"><a href="../期末專案/pages/home.jsp">WELCOME</a></button>
    </div>
    </main>

    <footer>
        Copyright ©2022 吾toy版權所有
        <br>
         目前網站瀏覽人數 : 
            <%
        try 
                    {
                    //Step 1: 載入資料庫驅動程式 
                        Class.forName("com.mysql.jdbc.Driver");
                        String url1="jdbc:mysql://localhost/";
                        Connection con1=DriverManager.getConnection(url1,"root","1234");
                        String sql1="USE toy";
                        request.setCharacterEncoding("utf-8");
                        con1.createStatement().execute(sql1);
                        try 
                        {
                    //Step 2: 建立連線 
                            if(con1.isClosed())
                            out.println("連線建立失敗");
                            else
                            {
                    //Step 3: 選擇資料庫         

                            sql1="SELECT * FROM counter ";
                            ResultSet footer = con1.createStatement().executeQuery(sql1);
                    //Step 4: 執行 SQL 指令, 只有一筆資料             
                            
                            
                    //Step 5: 顯示結果
                            
                            while (footer.next()) //只有一筆資料
                            {
                                String i =footer.getString("counter");
                                
                                int j=Integer.parseInt(i);
                                if(session.isNew())
                                {
                                j++;
                                out.print(j);
                                }
                                                    
                                else
                                {
                                j++;
                                out.print(j);
                                }
                                sql1="update counter set counter = '"+j+"' where num = 1";
                                int num= con1.createStatement().executeUpdate(sql1);
                                
                            }
                    //Step 6: 關閉連線
                                con1.close();
                            } 
                        }

                        catch (SQLException sExec) 
                        {
                            out.println("SQL錯誤"+sExec.toString());
                        
                        }

                    }
                        catch (ClassNotFoundException err) 
                        {
                            out.println("class錯誤"+err.toString());
                        }

                    %>
    </footer>
   
</body>
</html>