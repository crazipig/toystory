<!doctype html>
<%@ page import = "java.sql.*"%> 
<%@page import="java.util.*"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>後臺管理界面</title>
<style type="text/css">
body 
{
  color:#000000;
  background-image:url(../assets/images/背景.jpg);  
}
ul li 
{
	list-style-type:none; 

}
ul li a 
{
	color:#000000;
	text-decoration: none; 
	padding-left: 10px;
}
</style>
</head>
<body>

<h1><font face="標楷體" Size="6" style="padding-left: 10px;"><b>後臺管理功能</b></font> <ali></h1>

<ul>
<li><a href="p_add.jsp" target="content"><font face="標楷體" Size="5"><b>產品新增</b></font></a>
<li><a href="p_delete.jsp" target="content"><font face="標楷體" Size="5"><b>產品刪除</b></font></a>
<li><a href="p_update.jsp" target="content"><font face="標楷體" Size="5"><b>產品修改</b></font></a>
<li><a href="p_orders.jsp" target="content"><font face="標楷體"Size="5"><b>訂單管理</b></font></a>
<li><a href="p_productshow.jsp" target="content"><font face="標楷體" Size="5"><b>產品瀏覽</b></font></a>
<li><a href="p_membershow.jsp" target="content"><font face="標楷體" Size="5"><b>會員瀏覽</b></font></a>
<li><a href="logout.jsp" target="self"><font face="標楷體" Size="5"><b>登出</b></font></a>
</ul>

</body>
</html>