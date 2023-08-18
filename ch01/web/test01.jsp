<%-- 디렉티브(Directive) --%>
<%-- <%@ %> 로 감싼다. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>

<%-- 2. 선언문(Declare) : 익명의 클래스를 선언하며, 현재 문서에서만 유효 --%>
<%-- <%! %> 로 감싼다. --%>
<%!
  private String name;
  public String getName() {
    return this.name;
  }
  public void setName(String name) {
    this.name = name;
  }
%>

<!DOCTYPE html>
<html>
  <head>
      <title>기본 구성 요소</title>
  </head>
  <body>
  <%-- 3. 스크립트릿(Scriptlet) : 자바코딩 --%>
  <%-- <% %> 로 감싼다. --%>
  <%
    setName("몬스타엑스");
    String addr = "가산동";
  %>
  <hr>
    <%-- 4.표현식(Expression) : 값을 가져와 출력 --%>
    <%-- <%= %> 로 감싼다. --%>
    <p>이름 : <%=getName() %></p>
    <p>주소 : <%=addr %></p>
    <a href="index.jsp">메인으로</a>
  </body>
</html>