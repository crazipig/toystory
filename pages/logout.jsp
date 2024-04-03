<%@ page pageEncoding="UTF-8" import="java.util.*, java.sql.*, org.json.*" %>

<%

 session.removeAttribute("user_email"); 
 
 response.sendRedirect("../index.jsp"); 

%>