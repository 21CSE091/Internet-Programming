<%-- 
    Document   : newjsp
    Created on : Mar 20, 2023, 11:16:53 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INVOICE</title>
         <style>
            table,th,td{
               border:2px solid black;
               border-collapse: collapse;
               padding:20px;
            }
            body{
                background-image:url('bg.jpg');
                background-size: cover;
                margin-left:400px;
                margin-top:200px;
            }
        </style>
    </head>
    <body>
        <h1>INVOICE DATABASE DETAILS</h1>
        <table>
        <%
            Connection c=DriverManager.getConnection("jdbc:derby://localhost:1527/Invoices");
            Statement st= c.createStatement();
            ResultSet rs=st.executeQuery("Select count(*) from Invoices");
            rs.next();
            int count=rs.getInt(1);
            out.println("<tr><td>The total number of invoices in the database</td><td>" +count+"</td></tr>");
            ResultSet rs1=st.executeQuery("Select sum(total_amount) from Invoices");
            rs1.next();
            double total_amount=rs1.getDouble(1);
            out.print("<tr><td>The total amount of all invoices.</td><td> "+String.format("%.2f", total_amount)+"</td></tr>");
            ResultSet rs2=st.executeQuery("Select avg(total_amount) from Invoices");
            rs2.next();
            double avg=rs2.getDouble(1);
            out.print("<tr><td>The average amount of all invoices</td><td> "+String.format("%.2f", avg)+"</td></tr>");
                    %>
        </table>
    </body>
</html>
