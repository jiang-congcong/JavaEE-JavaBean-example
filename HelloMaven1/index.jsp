<%@ page language="java" import="beans.Box" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
<%
Box box=new Box();
box.setLength(3.0); box.setWidth(4.0); box.setHeight(5.0);
%>
长方体的长度为：<%=box.getLength()%> <br>
长方体的宽度为： <%=box.getWidth()%> <br>
长方体的高度为： <%=box.getHeight()%> <br>
<% out.println("长方体的容积为："+box.getcv() ); %>
--%>

<%-- 
<jsp:useBean id="box" class="beans.Box" scope="session" />
<jsp:setProperty name="box" property="length" value="3.0"/>
<jsp:setProperty name="box" property="width" value="4.0"/>
<jsp:setProperty name="box" property="height" value="5.0"/>
<a href="test.jsp">跳转</a>
--%>

<form action="test.jsp" >
长<input type="text" name="length" > <br>
宽<input type="text" name="width" > <br>
高<input type="text" name="height" > <br>
<input type="submit" value="提交">
</form>
</body>
</html>