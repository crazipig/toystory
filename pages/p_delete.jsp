<!doctype html>
<%@ page import = "java.sql.*"%> 
<%@page import="java.util.*"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="utf-8"%>
<html>
  <head>
    <title>產品刪除</title>
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
  
  <h1><font color = #0000FF back>產品刪除</font></h1>
    <form name="Product" method = "post" action = "p_delete1.jsp" >
        
		<h2><p>產品類別:</h2>
		<select name = "type" size = "1" >
		<option selected value="1">《怪獸電力公司》</option>
		<option value="2">《汽車總動員》</option>
		<option value="3">《玩具總動員》</option>	
		</select></p>
		
		
	    <p>產品名稱：<input type="text" name="name" required><br>

		
		
	
        <p>
        <input type = "submit" value = "刪除產品" name="D1"> 
        <input type = "reset" value = "重新設定" name="D2">
        </p>
       
    </form>
  </body>
</html>
