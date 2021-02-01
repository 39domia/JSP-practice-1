import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "Login", urlPatterns = "/login")
public class Login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        Map<Integer, Student> studentList = new HashMap<>();
        studentList.put(1, new Student("Sơn", 25));
        studentList.put(2, new Student("Tự", 19));
        studentList.put(3, new Student("Đạt", 19));
        studentList.put(4, new Student("Thắng béo", 19));
        studentList.put(5, new Student("Thắng gầy", 19));
        studentList.put(6, new Student("Phước", 19));
        studentList.put(7, new Student("Hải", 19));
        studentList.put(8, new Student("Thịnh", 19));
        studentList.put(9, new Student("Huy Anh", 24));

        int number = Integer.parseInt(request.getParameter("number"));

        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">");

        writer.println("<h3>Chào mừng học viên: <br></h3>");
        writer.println("Tên: " + studentList.get(number).getName() + "<br>");
        writer.println("Tuổi: " + studentList.get(number).getAge());
        writer.println("</html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
