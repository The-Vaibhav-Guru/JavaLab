<%-- 
    Document   : mobile
    Created on : 11 Apr 2022, 12:20:27
    Author     : thedarkalchemist
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src ="mobile.js"></script>
    </head>
    
    <body>
        <form action="mobile" method="POST" target="_blank">
            <table border="1">
            
            <tbody>
                <tr>
                    <td>Select Brand </td>
                    <td>
                        <select id="Brand" onchange="myFunction()">
                            <%
                             Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MobileData","root","vaibhav1"); 
                            ResultSet rs;
                            Statement st;
                            try{
                            st = con.createStatement();
                            String str = "SELECT BrandName FROM AddProduct";
                            rs = st.executeQuery(str);
                            while(rs.next()){%>
                            <option value="<%=rs.getString("BrandName")%>">
                                <%=rs.getString("BrandName")%>
                            </option>
                           <% 
                               }
                                    }
                            catch(Exception e){}
                            %>
                        </select>
                    </td>
                </tr>
            </tbody>
       
        </table>
                        <input type="submit" value="show">        

        </form>
    </body>
</html>