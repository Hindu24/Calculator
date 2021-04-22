<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Calculator</title>
</head>
<body>
<%
double a ;double b ;
String t1,t2;
t1 = request.getParameter("num1");
t2 = request.getParameter("num2");

a = Double.parseDouble(t1);
b = Double.parseDouble(t2);
String op = request.getParameter("opt");
int o = 0;int flag=0;
if (op.equals("+"))
    o = 1;
else if (op.equals("-"))
o = 2;
else if (op.equals("*"))
o = 3;
else if (op.equals("/"))
o = 4;
switch(o)
{
case 1:out.println("Addition of "+a+" and "+b+" is "+(a+b));break;
case 2:out.println("Subtraction of "+a+" and "+b+" is "+(a-b));break;
case 3:out.println("Multiplication of "+a+" and "+b+" is "+(a*b));break;
case 4:out.println("Division of "+a+" and "+b+" is "+(a/b));break;
default:out.println(" invalid input try again");flag = 1;break;
}




%>

</body>
</html>





