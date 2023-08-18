<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>파일을 포함시키기</title>
    <%
        pageContext.setAttribute("name", "살려줘");
        pageContext.setAttribute("age", "20");
    %>
</head>
<body>
    <h2 class="title">include directive</h2>
    <div class="container">
        <%@include file="includeFile.jsp"%>
    </div>
    <hr>
    <h2 class="title">include action tag</h2>
    <div class="container">
        <!-- 액션 태그의 include 데이터 바인딩이 되지 않은 상태에서 include 됨 -->
        <!-- 데이터 바인딩이 목적일땐, action include 사용하면 안됨 -->
        <jsp:include page="includeFile.jsp"></jsp:include>
    </div>
</body>
</html>