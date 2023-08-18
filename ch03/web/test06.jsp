<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EL(Expression Language) - 표현 언어</title>
</head>
<body>
    <%
        // 표현식 사용시에는 데이터변수로 저장하고, 매개변수로 전달해야함.
        String title = "상담하러감";
        String[] yeon = {"까다로움", "나이많음", "꾸준함", "웃김"};
        Map<String, String> jin = new HashMap<>();
        jin.put("name", "진");
        jin.put("age", "20");
        jin.put("nick", "교주");

        // 데이터를 넘기는 곳에서 setAttribute 해야 됨
        request.setAttribute("title", title);
        request.setAttribute("yeon", yeon);
        request.setAttribute("jin", jin);
    %>

    <h2>표현식(Expression)</h2>
    <p><%=title %></p>
    <div class="cate">
        <% for(String s : yeon) { %>
        <p><%=s %></p>
        <% } %>
    </div>
    <p><%=jin %></p>

    <a href="test07.jsp?title=${title }&yeon=${yeon }&jin=${jin }"></a>

    <hr>

    <h2>표현언어(Expression Language)</h2>
    <p>${title }</p>
    <c:forEach var="s" items="${yeon }">
    <p>${s }</p>
    </c:forEach>
    <p>${jin }</p>

    <!-- forward 문장을 기술하고, 해당 문서가 화면에 로딩되고, 주소는 바뀌지 않고 전달됨 -->
    <!-- <a href="test07.jsp"></a> -->
</body>
</html>