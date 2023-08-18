<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    String name = (String) pageContext.getAttribute("name");
    String age = (String) pageContext.getAttribute("age");
%>
<div class="infile">
    <h1>includeFIle.jsp</h1>
    <div class="dataArea">
        <p>Name : <%=name %></p>
        <p>age : <%=age %></p>
    </div>
</div>