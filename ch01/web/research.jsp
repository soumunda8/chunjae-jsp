<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>설문조사 결과</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <%

        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        String year = request.getParameter("year");
        String name = request.getParameter("name");
        String[] pet = request.getParameterValues("pet");

        for(int i = 0; i < pet.length; i++) {
            if(pet[i].equals("dog")) {
                pet[i] = "강아지";
            } else if(pet[i].equals("cat")) {
                pet[i] = "고양이";
            } else if(pet[i].equals("cow")) {
                pet[i] = "송아지";
            } else {
                pet[i] = "망아지";
            }
        }

        /*
        String abd = "";

        for(int i = 0; i < pet.length; i++) {
            abd += "<strong>"+pet[i]+"</strong><br>";
        }
        */

    %>
</head>
<body>
    <div class="container">
        <p>아이디 : <strong><%=id %></strong></p>
        <p>출생년도 : <strong><%=year %></strong></p>
        <p>이름 : <strong><%=name %></strong></p>
        <p>
            좋아하는 동물<br>
            <% for(int i = 0; i < pet.length; i++) { %>
                <strong><%=pet[i] %></strong><br>
            <% } %>
        </p>

        <a href="test03.jsp">테스트03 돌아가기</a><br>
        <a href="test04.jsp?id=<%=id %>">테스트04 돌아가기</a><br>
    </div>
</body>
</html>