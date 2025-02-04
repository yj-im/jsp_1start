<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/table.css">
<title>리스트 출력</title>
</head>
<body>
<%
	List<String> names=List.of("sana","momo","nayeon","nana");
	
%>
	<ul>
		<%
			for(String name : names){
		%>
			<li><%= name %></li>	
		<%
			}
		%>
	
	</ul>
	<hr/>
	<h2>번호와 이름을 table로 출력하는 연습</h2>
	<table>
	<tr>
		<th>번호</th><th>이름</th>
	<tr>
	<%
		for(int i=0; i<names.size();i++){
	%>
	<tr>
		<td><%= i+1 %></td><td><%= names.get(i) %></td>
	</tr>
	<%
		}
	%>
	</table>
</body>
</html>