<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>보내온 결과</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <%

        request.setCharacterEncoding("UTF-8");
        // ☆기본형은 초기화를 하지 않고 진행할시, 값이 들어오지 않으면 에러가 일어남..... -> 초기화 필수인 이유☆

        // POST 방식
        //request : 요청한 객체
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");

        // GET 방식
        int qty = Integer.parseInt(request.getParameter("qty"));
        int price = Integer.parseInt(request.getParameter("price"));

    %>
</head>
<body>
    <div class="container">
        <ul class="list">
            <li><span>아이디 : </span><%=id %></li>
            <li><span>비밀번호 : </span><%=pw %></li>
            <li><span>금액 : </span><%=qty*price %></li>
        </ul>
    </div>
</body>
</html>