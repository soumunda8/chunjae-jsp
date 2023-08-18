<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>전역 변수 테스트</title>
    <%

        //아래 전역변수는 둘중 하나만 사용함

        // 1. web.xml 에서 사용하는 방법
        String userId = application.getInitParameter("userId");
        String memberId = application.getInitParameter("memberId");

        // 2. 바로 사용하는 방법
        //application.setInitParameter("sid", "kim");

        // 위 방식말고 setAttribute 설정하면 문제 없음
        application.setAttribute("sid", "kim");
        String sid = (String) application.getAttribute("sid");
    %>
</head>
<body>
    <h2><%=userId %> 님의 웹 애플리케이션</h2>
    <hr>
    <h2>관리자님의 아이디는 <%=memberId %>입니다.</h2>
    <hr>
    <h2>손님의 아이디는 <%=sid %>입니다.</h2>
    <hr>
    <a href="test02.jsp">전역변수 테스트2</a>
</body>
</html>