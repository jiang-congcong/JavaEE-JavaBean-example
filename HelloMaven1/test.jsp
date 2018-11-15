<%@page import="beans.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="box" class="beans.Box" scope="session" />
<jsp:setProperty name="box" property="*" />
<%-- 
在JSP中使用JavaBean<br>
长方体的长度为：<jsp:getProperty name="box" property="length"/><br>
长方体的宽度为：<jsp:getProperty name="box" property="width"/><br>
长方体的高度为：<jsp:getProperty name="box" property="height"/><br>
<% out.println("长方体的容积为："+box.getcv() ); %>
--%>


<%
boolean flag=box.rect();
if(flag){
	out.println("三角形周长为："+box.circle() );
	out.print("<br/>");
	out.println("三角形面积为："+box.S() );
	out.print("<br/>");
}
else{
	out.println("不能构成三角形");
}

%>

<jsp:useBean id="cnt" class="beans.Counter" scope="application" />
当前页面访问次数：
<% if(session.isNew()) { cnt.count(); } %>
<jsp:getProperty name="cnt" property="count"/>

</body>
</html>