<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>전역변수 테스트2</title>
    <%
        // 전역 객체 : application
        // setInitParameter("변수명", "값);
        // getInitParameter("변수명");
        // setAttribute("속성명", "값");
        // getAttribute("속성명"); -> 형변환 필수

        String userId = application.getInitParameter("userId");
        String memberId = application.getInitParameter("memberId");
        String sid = (String) application.getAttribute("sid");
    %>
</head>
<body>
    <h1>전역변수 테스트2</h1>
    <h2><%=userId %> 님의 웹 애플리케이션</h2>
    <hr>
    <h2>관리자님의 아이디는 <%=memberId %>입니다.</h2>
    <hr>
    <h2>손님의 아이디는 <%=sid %>입니다.</h2>
    <hr>
    <a href="test01.jsp">전역변수 테스트1</a>
    <hr>
    <a href="/">메인으로</a>
</body>
</html>