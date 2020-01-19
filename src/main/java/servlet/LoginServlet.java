package servlet;

import entity.User;
import org.hibernate.Session;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        request.getRequestDispatcher("/jsp/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        request.setCharacterEncoding("UTF-8");
        String login = request.getParameter("login");
        String password = request.getParameter("password");
        if(login.isEmpty() || password.isEmpty())
        {
            request.setAttribute("result", "Логин или пароль не введен.");
            request.getRequestDispatcher("/jsp/login.jsp").forward(request, response);
        }

        HttpSession session = request.getSession();
        UserService userService = new UserService();
        if(userService.findByLogin(login).isEmpty()) {
            request.setAttribute("result", "Пользовать с таким логином не найден.");
        }
        else if(!userService.checkPassword(login, password)){
            request.setAttribute("result", "Неверный пароль.");
        }
        else {
            List<User> buf = userService.findByLogin(login);
            session.setMaxInactiveInterval(-1);
            session.setAttribute("user", buf.get(0));
            response.sendRedirect(request.getContextPath() + "/shop");
            return;
        }
        request.getRequestDispatcher("/jsp/login.jsp").forward(request, response);
    }
}
