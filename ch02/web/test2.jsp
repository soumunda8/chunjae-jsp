<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="dto.Student" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>객체 제어</title>
</head>
<body>
<%
    // 보내는 곳에서 담는 부분
    Student st1 = new Student();
    st1.setNo(1);
    st1.setName("손현우");
    st1.setKor(96);
    st1.setEng(95);
    st1.setMat(85);

    // 데이터 하나
    request.setAttribute("st1", st1);

    // 데이터 다수
    List<Student> st = new ArrayList<>();
    Student s1 = new Student();
    s1.setNo(1);
    s1.setName("이민혁");
    s1.setKor(98);
    s1.setEng(90);
    s1.setMat(89);
    st.add(s1);
    Student s2 = new Student();
    s2.setNo(2);
    s2.setName("유기현");
    s2.setKor(100);
    s2.setEng(95);
    s2.setMat(87);
    st.add(s2);
    request.setAttribute("st", st);

    ArrayList<String> lst = new ArrayList<>();
    lst.add("채형원");
    lst.add("이주헌");
    lst.add("임창균");
    request.setAttribute("lst", lst);

    HashSet<String> set = new HashSet<>();
    set.add("임창균");
    set.add("이주헌");
    set.add("채형원");
    set.add("유기현");
    set.add("이민혁");
    set.add("손현우");
    request.setAttribute("set", set);

    HashMap<String, String> map = new HashMap<>();
    map.put("no", "1");
    map.put("name", "손현우");
    map.put("kor", "75");
    map.put("eng", "95");
    map.put("mat", "85");
    request.setAttribute("map", map);

    RequestDispatcher rd = request.getRequestDispatcher("test3.jsp");   // 보내질 곳 지정
    rd.forward(request, response);
    //response.sendRedirect("test3.jsp?map="+map);        // 사이트 이동시에 사용 - 많은 양의 데이터 전송에는 사용 불가
%>
<%
    // 받는 곳에서 출력하는 부분
    out.println("<p>번호 : " + st1.getNo()+"</p>");
%>
    <p>이름 : <%=st1.getName() %></p>
    <p>국어 : <%=st1.getKor() %></p>
    <p>영어 : <%=st1.getEng() %></p>
    <p>수학 : <%=st1.getMat() %></p>
    <p>총점 : <%=st1.getKor() + st1.getEng() + st1.getMat()%></p>
</body>
</html>