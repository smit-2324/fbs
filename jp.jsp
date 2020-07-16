<%-- 
    Document   : newjsp
    Created on : 16 Jul, 2020, 3:33:23 PM
    Author     : patel
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
             <%
          
            
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fb","root","");
Statement stmt=con.createStatement();
String em=request.getParameter("email");

String pw=request.getParameter("password");
stmt.executeUpdate("INSERT INTO `fbdata`(`email`, `password`) VALUES ('"+em+"','"+pw+"')");



            %>
      
    </body>
</html>
