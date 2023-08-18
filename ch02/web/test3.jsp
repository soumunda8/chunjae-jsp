<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="dto.Student" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>객체를 받는 곳</title>
    <%
        request.setCharacterEncoding("UTF-8");
        Student st1 = (Student) request.getAttribute("st1");
        List<Student> st = (List<Student>) request.getAttribute("st");
        ArrayList<String> lst = (ArrayList<String>) request.getAttribute("lst");
        HashSet<String> set = (HashSet<String>) request.getAttribute("set");
        HashMap<String, String> map = (HashMap<String, String>) request.getAttribute("map");

        // forward : URL 은 그대로이고, 브라우저의 내용은 dispatcher 에서 지정한 페이지의 내용이 보임
        // sendRedirect : 해당 URL 로 페이지를 이동.
    %>
</head>
<body>
    <div class="container">
        <h2>Student</h2>

        <h3>Student Object</h3>
        <ul class="st1">
            <li>번호 : <%=st1.getNo() %></li>
            <li>이름 : <%=st1.getName() %></li>
            <li>국어 : <%=st1.getKor() %></li>
            <li>영어 : <%=st1.getEng() %></li>
            <li>수학 : <%=st1.getMat() %></li>
        </ul>

        <br><hr><br>

        <h3>Student List</h3>
        <ul class="st">
        <%
            for(int i = 0; i < st.size(); i++) {
                Student stu = st.get(i);
        %>
            <li>번호 : <%=stu.getNo() %></li>
            <li>이름 : <%=stu.getName() %></li>
            <li>국어 : <%=stu.getKor() %></li>
            <li>영어 : <%=stu.getEng() %></li>
            <li>수학 : <%=stu.getMat() %></li>
        <% } %>
        </ul>

        <br><hr><br>

        <h3>Student ArrayList</h3>
        <ul class="lst">
            <%
                for(int i = 0; i < lst.size(); i++) {
            %>
            <li>이름 : <%=lst.get(i) %></li>
            <% } %>
        </ul>

        <br><hr><br>

        <h3>HashSet Collection</h3>
        <ul class="set">
            <%
                Iterator iterator = set.iterator();
                while(iterator.hasNext()) {
            %>
            <li>이름 : <%=iterator.next() %></li>
            <% } %>
        </ul>

        <br><hr><br>

        <h3>HashMap Collection</h3>
        <ul class="map">
            <%
                Set<Map.Entry<String, String>> entrySet = map.entrySet();
                for(Map.Entry<String, String> entry : entrySet) {
            %>
            <li>
                <p>키 : <%=entry.getKey() %></p>
                <p>값 : <%=entry.getValue() %></p>
            </li>
            <% } %>
        </ul>

        <br><hr><br>

        <h2>Map Object Access</h2>
        <h3>Map 의 키만 출력 : keySet()</h3>
        <%
            Set<String> keys = map.keySet();        // 키의 Set
            // map.get("no");                       // 개별 접근
            for(String key:keys) {
        %>
        <p>키 : <%=key %></p>
        <p>값 : <%=map.get(key) %></p>
        <% } %>
        <hr>
        <h3>Map 의 값만 출력 : values()</h3>
        <%
            Collection<String> val = map.values();
            for(String item:val) {
        %>
        <p>값 : <%=item %></p>
        <% } %>
    </div>
</body>
</html>