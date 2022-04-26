<%-- 
    Document   : mobile2
    Created on : 18 Apr 2022, 12:18:16
    Author     : thedarkalchemist
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%
    dbConnect d =new dbConnect();
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MobileData","root","vaibhav1"); 
                            ResultSet rs;
                            Statement st;
                            String x = request.getParameter("BrandName");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello There!</h1>
        <form action="mobile_fetch" method="GET">
        <select name ="Brand" id="brand"onchange="">
            <option>
            <%
                            
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
            </option>
        </select>
            
            <table border="1">
                <thead>
                    <tr>
                        <th>Sr.Number</th>
                        <th>Model</th>
                        <th>Price</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <%
                        if(x!=null){
                            if(x!=null){
                            ResultSet rs1;
                            Statement st1;
                            Connection c1;
                            String str1 = "SELECT BrandName FROM AddProduct"+x+"";
                            c1 =d.getConnect();
                            st1=c1.createStatement();
                            rs1=st1.executeQuery(str1);
                            
                        }
                        }
                    
                    %>
                    <tr>
                        <td><<%
                            =i;
                            %>/td>
                        <td><%=rs.get%></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>

            </form>
    </body>
    
</html>
