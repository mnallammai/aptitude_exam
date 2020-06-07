<%-- 
    Document   : cbasic
    Created on : 6 Jun, 2020, 4:52:48 PM
    Author     : nallu
--%>

<%@page contentType="text/html" language="java" import="java.sql.*"%>
<html>
<head>
<title>Online Exam Server</title>
<style type="text/css">
   body{background-color:black;font-family:courier;color:blue}
</style>
</head>
<body>
<h2 style="text-align:center">ONLINE EXAMINATION</h2>
<p>
<a href="exam.html">Back To Main Page</a>
</p>
<hr/>
<%
String str1=request.getParameter("ans1");
String str2=request.getParameter("ans2");
String str3=request.getParameter("ans3");
int mark=0;
Class.forName("org.postgresql.Driver");

Connection con=DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/postgres","postgres","nallu005");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("SELECT answers FROM TABLE1");
int i=1;
while(rs.next())
{
 if(i==1)
 {
  String dbans1=rs.getString(1);
  if(str1.equals(dbans1))
  {
   mark=mark+5;
  }
 }
 if(i==2)
 {
  String dbans2=rs.getString(1);
  if(str2.equals(dbans2))
  {
   mark=mark+5;
  }
 }
 
 
 if(i==3)
 {
  String dbans2=rs.getString(1);
  if(str2.equals(dbans2))
  {
   mark=mark+5;
  }
 }
 if(i==4)
 {
  String dbans2=rs.getString(1);
  if(str2.equals(dbans2))
  {
   mark=mark+5;
  }
 }
 if(i==5)
 {
  String dbans2=rs.getString(1);
  if(str2.equals(dbans2))
  {
   mark=mark+5;
  }
 }
 if(i==6)
 {
  String dbans2=rs.getString(1);
  if(str2.equals(dbans2))
  {
   mark=mark+5;
  }
 }
 if(i==7)
 {
  String dbans2=rs.getString(1);
  if(str2.equals(dbans2))
  {
   mark=mark+5;
  }
 }
 
 i++;
}
if(mark>=10)
{
 out.println("<h4>Your Mark Is : "+mark+"</h4>");
 out.println("<h3>Congratulations....! You Are Eligible For The Next Round...</h3>");
}
else
{
 out.println("<h4>Your Mark is : "+mark+"</h4>");
 out.println("<h3>Sorry....!! You Are Not Eligible For  The Next Round...</h3>");
} 
%>
</form>
</body>
</html>





