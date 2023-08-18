<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setContentType("text/html;charset=UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>액션 태그 - getProperty/setProperty</title>
    <jsp:useBean id="mem" scope="request" class="ch03.Member" />
    <jsp:setProperty name="mem" property="*" />
    <jsp:setProperty name="mem" property="no" value="<%=mem.getNo() %>" />
    <jsp:setProperty name="mem" property="id" value="<%=mem.getId() %>" />
    <jsp:setProperty name="mem" property="pw" value="<%=mem.getPw() %>" />
    <jsp:setProperty name="mem" property="name" value="<%=mem.getName() %>" />
    <jsp:setProperty name="mem" property="point" value="<%=mem.getPoint() %>" />
</head>
<body>
<div class="container">
    <h2>표현식을 활용한 데이터 바인딩</h2>
    <p>setProperty 상관없음</p>
    <div>
        <ul class="list">
            <li>번호 : <%=mem.getNo() %></li>
            <li>아이디 : <%=mem.getId() %></li>
            <li>비밀번호 : <%=mem.getPw() %></li>
            <li>이름 : <%=mem.getName() %></li>
            <li>점수 : <%=mem.getPoint() %></li>
        </ul>
    </div>
    <hr>
    <h2>표현언어를 활용한 데이터 바인딩</h2>
    <p>setProperty 상관없음</p>
    <div>
        <ul class="list">
            <li>번호 : ${mem.no }</li>
            <li>아이디 : ${mem.id }</li>
            <li>비밀번호 : ${mem.pw }</li>
            <li>이름 : ${mem.name }</li>
            <li>점수 : ${mem.point }</li>
        </ul>
    </div>
    <hr>
    <h2>getProperty 활용한 데이터 바인딩</h2>
    <p>setProperty 와 짝을 이루기 때문에, setProperty 선언하지 않으면 getProperty 사용하지 못함</p>
    <div>
        <ul class="list">
            <li>번호 : <jsp:getProperty name="mem" property="no" /></li>
            <li>아이디 : <jsp:getProperty name="mem" property="id" /></li>
            <li>비밀번호 : <jsp:getProperty name="mem" property="pw" /></li>
            <li>이름 : <jsp:getProperty name="mem" property="name" /></li>
            <li>점수 : <jsp:getProperty name="mem" property="point" /></li>
        </ul>
    </div>
</div>
</body>
</html>