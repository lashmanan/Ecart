<%@page import="java.sql.*; "%> 
<%

String name=request.getParameter("name");

String email=request.getParameter("email");

String password=request.getParameter("password");
String Retype password=request.getParameter("Retype password");


try{

Class.forName("com.mysql.jdbc.Driver");

Connection con-DriverManager.getConnection("jdbc: mysql://localhost:3306/jashu","root", "Reddy@66864");

Statement st=con.createStatement();

st.executeUpdate("insert into user (name, email, password) values ('"+name+"','"+email+"','"+password+"')");
response.sendRedirect("save.html")
} 
catch(Exception e);

{
	response.sendRedirect("error.html");
}


%>