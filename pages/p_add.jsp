<!doctype html>
<%@ page import = "java.sql.*"%> 
<%@page import="java.util.*"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="utf-8"%>
<html>
  <head>
    <title>產品新增</title>
<style type="text/css">
body 
{
  background-color: #f8f8ff;
  margin-top: 30px;
  margin-left: 50px;
  font-family: 標楷體;
}


</style>
  </head>
  <body>
  
  <h1><font color = #0000FF back>產品新增</font></h1>
    <form name="Product" method = "post" action = "p_add1.jsp" >
        
        
	    <p>玩具分類：<input type="text" name="type" required><br>
	    <p>玩具中文名稱：<input type="text" name="name" required><br>
      <p>玩具英文文名稱：<input type="text" name="Ename" required><br>
	    <p>來源電影：<input type="text" name="theme" required ><br>
      <p>來源電影（英文名）：<input type="text" name="themeEng" required ><br>
	    <p>玩具介紹：<input type="text" name="introduction" required><br>
      <p>玩具經典台詞：<input type="text" name="lines" required><br>
	    <p>玩具價格：（num）<input type="text" name="price" required><br>
	    <p>玩具庫存：（num）<input type="text" name="inventory" required ><br>
        <p>玩具圖片路徑1：<input type="text" name="img1" required><br>
        <p>玩具圖片路徑2：<input type="text" name="img2" required><br>
        <p>玩具圖片路徑3：<input type="text" name="img3" required><br>

		
        <p>
        <input type = "submit" value = "新增產品" name="submit"> 
        <input type = "reset" value = "重新設定" name="reset">
        </p>
       
    </form>
  </body>
</html>