<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>

<%
	String dob = request.getParameter("dob");
	int ydob = Integer.parseInt(dob.substring(0,4));
	int mdob = Integer.parseInt(dob.substring(5, 7));
	int ddob = Integer.parseInt(dob.substring(8,10));
	
	DateFormat dateFormat = new SimpleDateFormat("yyyy");
	java.util.Date date = new java.util.Date();
	int thisyear = Integer.parseInt(dateFormat.format(date));
	
	dateFormat = new SimpleDateFormat("MM");
	date = new java.util.Date();
	int thismonth = Integer.parseInt(dateFormat.format(date));
	
	 dateFormat = new SimpleDateFormat("dd");
	 date = new java.util.Date();
	 int thisday = Integer.parseInt(dateFormat.format(date));
	 
	 int age = thisyear - ydob;
	 
	 if(thismonth<mdob)
	 {
		 age=age-1;
	 }
	
	 if(thismonth==mdob && thisday<ddob)
	 {
		 age = age-1;
	 }
	 out.print("Your age is: "+age);
%>
</body>
</html>