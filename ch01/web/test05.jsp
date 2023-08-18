<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>response 페이지</title>
</head>
<body>
    <div class="container">
        <h2 class="title">로그인</h2>
        <form action="response.jsp" name="login_form" method="post">
            <table class="table" id="tb1">
                <tbody>
                <tr>
                    <th><label for="id">아이디 : </label></th>
                    <td><input type="text" id="id" name="id" autofocus required></td>
                </tr>
                <tr>
                    <th><label for="pw">비밀번호 : </label></th>
                    <td><input type="password" id="pw" name="pw" required></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="로그인" class="btn btn-primary">
                        <input type="reset" value="취소" class="btn">
                    </td>
                </tr>
                </tbody>
            </table>
        </form>
    </div>
    <hr>
    <%
        String msg = request.getParameter("msg");
        String id = (String) session.getAttribute("id");        // 파싱
        String pw = (String) session.getAttribute("pw");
    %>
    <div class="container">
        <h2>로그인 정보</h2>
        <% if(msg != null) { %>
        <p>메세지 : <%=msg %></p>
        <% } %>
        <% if(id != null) { %>
        <p>id : <%=id %></p>
        <p>pw : <%=pw %></p>
        <% } %>
    </div>
</body>
</html>