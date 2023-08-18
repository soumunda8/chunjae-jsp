<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>test1 - 데이터 전송하기</title>
    <%
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
    %>
</head>
<body>
<div class="msg">
    <h2>pageContext</h2>
    <hr>
    <%
    String str = request.getParameter("str");
    if(str.equals("include")) {
        pageContext.include("target.jsp");      // 현재 페이지에 target.jsp 의 내용을 포함하라
    } else if(str.equals("forward")) {
        pageContext.forward("target.jsp");      // 현재 페이지에 target.jsp 의 내용을 전송하라
    } else {
        out.println("<h2>잘못된 값입니다.</h2>");
    }
    %>
</div>
</body>
</html>