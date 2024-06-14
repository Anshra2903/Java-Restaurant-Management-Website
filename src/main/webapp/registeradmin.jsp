
<%@ page import ="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
        
<%

   
    Class.forName("com.mysql.cj.jdbc.Driver");
    
    
   try{
    
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rms","root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into admin(id,fname,email,password)values(null,'Ahmed','ahmed1@gmail.com','12345')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("adminlogin.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("register.jsp");
    }
    
   }catch (Exception e)
   {
       %>
       <script>

    alert("An accout already exist using this email.");
     window.location.href = "register.jsp";
</script>
   <%    
       
   }
%>
    </body>
</html>