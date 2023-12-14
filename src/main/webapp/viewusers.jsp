<!DOCTYPE html>  
  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>View Users</title>  
</head>  
<body>  
  
<%@page import="bean.RegisterDao, bean.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h1>Users List</h1>  
  
<%  
List<User> list=Bean.RegisterDaogetAllRecords();  
request.setAttribute("list",list);  
%>  
  
<table border="1" width="90%">  
<tr><th>Name</th><th>Email</th><th>Age</th><th>DOB</th>    
<c:forEach items="${list}" var="r">  
<tr><td>${u.getName()}</td><td>${u.getEmail()}</td><td>${u.getAge()}</td>  
<td>${u.getDob()}</td> </tr>  
  
</body>  
</html>  