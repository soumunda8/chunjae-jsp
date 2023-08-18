package ch03;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@WebServlet("/Test09JavaCtrl.do")
public class Test09JavaCtrl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] names = {"손현우", "이민혁", "유기현", "채형원", "이주헌", "임창균"};

        ArrayList<String> lst1 = new ArrayList<>();
        lst1.add("몬스타엑스");
        lst1.add("몬스타제트");
        lst1.add("몬스타와이");
        lst1.add("몬스타에이");

        HashMap<String, String> map = new HashMap<>();
        map.put("name", "john");
        map.put("age", "20");
        map.put("height", "178.5");
        map.put("hobby", "sleep");

        List<Member> mList = new ArrayList<>();
        mList.add(new Member(1, "son", "12345", "손현우", 2000));
        mList.add(new Member(2, "lee", "54321", "이민혁", 1000));
        mList.add(new Member(3, "you", "15951", "유기현", 500));

        request.setAttribute("names", names);
        request.setAttribute("lst1", lst1);
        request.setAttribute("map", map);
        request.setAttribute("mList", mList);

        // 디스패치로 보내기
        RequestDispatcher view = request.getRequestDispatcher("test09.jsp");
        view.forward(request, response);
    }
}
