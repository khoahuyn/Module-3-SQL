package codegym.controller.controll;

import codegym.controller.model.student;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@javax.servlet.annotation.WebServlet(name = "Studentservlet",urlPatterns = "/student")
public class Studentservlet extends javax.servlet.http.HttpServlet {
    private static List<student> studentList;

    static {
        studentList=new ArrayList<>();
        studentList.add(new student("Nguyen Thu Ha Nhi","21/09/2003","Da nang","avatar.png"));
        studentList.add(new student("Dinh viet nhat Tan","30/12/2002","Gia Lai","avatar_1.jpg"));
        studentList.add(new student("Huynh Anh Tuan","21/06/2003","Quang Nam","avatar_2.png"));
        studentList.add(new student("Huynh Lan ","22/07/2003","Da nang","avatar_3.jpg"));
        studentList.add(new student("Ha Toan Anh","13/10/2003","Da nang","avatar_4.jpg"));

    }
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

//        response.sendRedirect("/student/index.jsp");
        request.setAttribute("studentList",studentList);
        request.getRequestDispatcher("/student/index.jsp").forward(request,response);
    }
}
