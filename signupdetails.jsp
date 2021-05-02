<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.SQLException" %>


<%
String username=request.getParameter("username");
String email=request.getParameter("email");
String password=request.getParameter("pwd");

try {
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/techify_db?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false","root","newrootpassword");  
Statement st=con.createStatement();
int i=st.executeUpdate("INSERT INTO register(name,email,password)VALUES('"+username+"','"+email+"','"+password+"')");

} catch(Exception e)
{
    out.println(e);
    out.println("REGISTRATION UNSUCCESSFUL");
}

%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SIGNNORA</title>

    <!-- bootstrap css -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <!-- aos css -->
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <!-- custom stylesheet -->
    <link rel="stylesheet" href="styles.css">

    <!-- Font awesome -->
    <script src="https://kit.fontawesome.com/9b54928ef1.js" crossorigin="anonymous"></script>
    <!-- Bootstrap scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>
</head>
<center><h4><P style="color:blue">REGISTRATION SUCCESSFULL!!</p></h4>
<center><h4><a href="login.html">click this to move to login</a></h4>
   <div id="login-img" class="col-lg-6" style="background-color: black;">
                <img width="100%;height=auto " src="assets/login-hero1.gif" alt="login-hero">
                </body>
</html>
