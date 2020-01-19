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
import java.util.List;

@WebServlet(urlPatterns = {"/profile"})
public class ProfileServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if(user == null) {
            response.sendRedirect(request.getContextPath() + "/shop");
            return;
        }

        request.getRequestDispatcher("/jsp/profile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        request.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession();
        String login = request.getParameter("login");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if(login.isEmpty() || password.isEmpty() || email.isEmpty())
        {
            request.setAttribute("result", "Логин, почта или пароль не введены");
            request.getRequestDispatcher("/jsp/registration.jsp").forward(request, response);
            return;
        }

        UserService userService = new UserService();
        User user = (User) session.getAttribute("user");
        boolean flagEmail;
        boolean flagLogin;
        //----Проверка на повторение----
        List<User> list = userService.findByEmail(email);
        if(list.isEmpty()) {                //Если результат пуст, значит совпадений не найдено, все ок
            flagEmail = true;
        }
        else if (list.size() > 1) {         //Если несколько совпадений, то 100% занято
            flagEmail = false;
        }
        else flagEmail = list.get(0).getId().equals(user.getId()); // Если 1 совпадение, то проверяем нашего пользователя или нет, если нашего все ок
        //---Проверка логина
        List<User> list2 = userService.findByLogin(login);
        if(list2.isEmpty()) {                //Если результат пуст, значит совпадений не найдено, все ок
            flagLogin = true;
        }
        else if (list2.size() > 1) {         //Если несколько совпадений, то 100% занято
            flagLogin = false;
        }
        else flagLogin = list2.get(0).getId().equals(user.getId()); // Если 1 совпадение, то проверяем нашего пользователя или нет, если нашего все ок
        //----------------

        if(flagEmail && flagLogin) {
            user.setLogin(login);
            user.setEmail(email);
            user.setPassword(password);
            userService.update(user);
            session.setAttribute("user", user);
            request.setAttribute("result", "Данные успешно изменены!");
        }
        else {
            request.setAttribute("result", "Указанный E-Mail или Login уже используется!");
        }
        request.getRequestDispatcher("/jsp/profile.jsp").forward(request, response);
    }
}
