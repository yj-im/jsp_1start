<%@page import="vo.Product"%>
<%@page import="java.util.List"%>
<%@page import="dao.TblProductDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/table.css">
<title>tbl_Product 테이블 dao</title>
</head>
<body>
<%
	TblProductDao dao= TblProductDao.getInstance();
	List<Product> list = dao.selectByCategory("B1");	// 카테고리값 변경 직접 문자열값 변경
	// 결과 리스트를 브라우저에 출력하고 싶다. --> table tag
	// dao 잘 실행되는지 간단 테스트
	// out.print(list);
%>
	<h2>카테고리별 상품 목록</h2>
	<table>
	<tr id="productH">
		<th style="width:100px">번호</th>
		<th>카테고리</th>
		<th>상품명</th>
		<th>상품코드</th>
		<th>가격</th>
	<tr>
	<%
		for(int i=0; i<list.size();i++){
			// list.get(i)는 product 타입이다.
			 Product temp=list.get(i); //라고하고 밑에 temp 라고 써도됨
	%>	
	<tr id="product">
		<td><%= i+1 %></td>
		<td><%= list.get(i).getCategory() %></td>
		<td><%= list.get(i).getPname() %></td> <!-- 왼쪽 정렬 -->
		<td><%= list.get(i).getPcode() %></td>
		<td><%= String.format("%,6d", temp.getPrice()) %></td> <!-- 오른쪽 정렬 -->
	</tr>
	<%
		}
	%>
	</table>

</body>
</html>