<%-- 
    Document   : register
    Created on : 18 Apr, 2020, 10:38:58 PM
    Author     : nallu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
    </head>
    <body>
        <<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String name=request.getParameter("name"); 

String college=request.getParameter("college"); 
String username=request.getParameter("username");
session.putValue("u",username); 

String password=request.getParameter("password"); 

Class.forName("org.postgresql.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/postgres","postgres","nallu005"); 
Statement st= con.createStatement(); 
ResultSet rs=null; 
int i=st.executeUpdate("insert into examregister values ('"+name+"','"+college+"','"+username+"','"+password+"')"); 
rs=st.executeQuery("select * from examregister");

out.println("<h1><center><b>YOUR HAVE SUCCESSFULLY CREATED AN ACCOUNT  "+name+"!!!</b></h1><center>"); 
out.println("<h2><center>Login in home page to attend your exam</center></h2>"); 

con.close();

%>
<a href="index.html"></a>
    </body>
</html>
