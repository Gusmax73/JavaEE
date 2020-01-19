package servlet;

import entity.User;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = {"/registration"})
public class RegistrationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        request.getRequestDispatcher("/jsp/registration.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        request.setCharacterEncoding("UTF-8");

        String login = request.getParameter("login");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if(login.isEmpty() || password.isEmpty() || email.isEmpty())
        {
            request.setAttribute("result", "Логин, почта или пароль не введены");
            request.getRequestDispatcher("/jsp/registration.jsp").forward(request, response);
            return;
        }

        User user = new User(login, email, password);
        UserService userService = new UserService();

        HttpSession session = request.getSession();

        if(userService.findByEmail(email).isEmpty() && userService.findByLogin(login).isEmpty()) {
            userService.add(user);
            session.setAttribute("user", user);
            request.setAttribute("result", "Пользователь " + login + " успешно зарегистрирован!");
            response.sendRedirect(request.getContextPath() + "/profile");
            return;
        }
        else {
            request.setAttribute("result", "Указанный E-Mail или Login уже используется!");
        }
        request.getRequestDispatcher("/jsp/registration.jsp").forward(request, response);
    }
}
